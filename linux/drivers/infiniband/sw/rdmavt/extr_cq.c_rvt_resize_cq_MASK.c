#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rvt_mmap_info {int /*<<< orphan*/  pending_mmaps; int /*<<< orphan*/  offset; } ;
struct rvt_k_cq_wc {int head; int tail; int /*<<< orphan*/ * kqueue; int /*<<< orphan*/ * uqueue; } ;
struct TYPE_4__ {int max_cqe; } ;
struct TYPE_5__ {int /*<<< orphan*/  node; TYPE_1__ props; } ;
struct rvt_dev_info {int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  pending_mmaps; TYPE_2__ dparms; } ;
struct rvt_cq_wc {int head; int tail; int /*<<< orphan*/ * kqueue; int /*<<< orphan*/ * uqueue; } ;
struct TYPE_6__ {int cqe; } ;
struct rvt_cq {int /*<<< orphan*/  lock; struct rvt_mmap_info* ip; struct rvt_k_cq_wc* kqueue; struct rvt_k_cq_wc* queue; TYPE_3__ ibcq; struct rvt_dev_info* rdi; } ;
struct ib_wc {int dummy; } ;
struct ib_uverbs_wc {int dummy; } ;
struct ib_udata {int outlen; } ;
struct ib_cq {int dummy; } ;
typedef  int /*<<< orphan*/  offset ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 struct rvt_cq* FUNC3 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_dev_info*,struct rvt_mmap_info*,int,struct rvt_k_cq_wc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct rvt_k_cq_wc*) ; 
 struct rvt_k_cq_wc* FUNC11 (int) ; 
 struct rvt_k_cq_wc* FUNC12 (int,int /*<<< orphan*/ ) ; 

int FUNC13(struct ib_cq *ibcq, int cqe, struct ib_udata *udata)
{
	struct rvt_cq *cq = FUNC3(ibcq);
	u32 head, tail, n;
	int ret;
	u32 sz;
	struct rvt_dev_info *rdi = cq->rdi;
	struct rvt_cq_wc *u_wc = NULL;
	struct rvt_cq_wc *old_u_wc = NULL;
	struct rvt_k_cq_wc *k_wc = NULL;
	struct rvt_k_cq_wc *old_k_wc = NULL;

	if (cqe < 1 || cqe > rdi->dparms.props.max_cqe)
		return -EINVAL;

	/*
	 * Need to use vmalloc() if we want to support large #s of entries.
	 */
	if (udata && udata->outlen >= sizeof(__u64)) {
		sz = sizeof(struct ib_uverbs_wc) * (cqe + 1);
		sz += sizeof(*u_wc);
		u_wc = FUNC11(sz);
		if (!u_wc)
			return -ENOMEM;
	} else {
		sz = sizeof(struct ib_wc) * (cqe + 1);
		sz += sizeof(*k_wc);
		k_wc = FUNC12(sz, rdi->dparms.node);
		if (!k_wc)
			return -ENOMEM;
	}
	/* Check that we can write the offset to mmap. */
	if (udata && udata->outlen >= sizeof(__u64)) {
		__u64 offset = 0;

		ret = FUNC2(udata, &offset, sizeof(offset));
		if (ret)
			goto bail_free;
	}

	FUNC7(&cq->lock);
	/*
	 * Make sure head and tail are sane since they
	 * might be user writable.
	 */
	if (u_wc) {
		old_u_wc = cq->queue;
		head = FUNC0(old_u_wc->head);
		tail = FUNC0(old_u_wc->tail);
	} else {
		old_k_wc = cq->kqueue;
		head = old_k_wc->head;
		tail = old_k_wc->tail;
	}

	if (head > (u32)cq->ibcq.cqe)
		head = (u32)cq->ibcq.cqe;
	if (tail > (u32)cq->ibcq.cqe)
		tail = (u32)cq->ibcq.cqe;
	if (head < tail)
		n = cq->ibcq.cqe + 1 + head - tail;
	else
		n = head - tail;
	if (FUNC9((u32)cqe < n)) {
		ret = -EINVAL;
		goto bail_unlock;
	}
	for (n = 0; tail != head; n++) {
		if (u_wc)
			u_wc->uqueue[n] = old_u_wc->uqueue[tail];
		else
			k_wc->kqueue[n] = old_k_wc->kqueue[tail];
		if (tail == (u32)cq->ibcq.cqe)
			tail = 0;
		else
			tail++;
	}
	cq->ibcq.cqe = cqe;
	if (u_wc) {
		FUNC1(u_wc->head, n);
		FUNC1(u_wc->tail, 0);
		cq->queue = u_wc;
	} else {
		k_wc->head = n;
		k_wc->tail = 0;
		cq->kqueue = k_wc;
	}
	FUNC8(&cq->lock);

	if (u_wc)
		FUNC10(old_u_wc);
	else
		FUNC10(old_k_wc);

	if (cq->ip) {
		struct rvt_mmap_info *ip = cq->ip;

		FUNC6(rdi, ip, sz, u_wc);

		/*
		 * Return the offset to mmap.
		 * See rvt_mmap() for details.
		 */
		if (udata && udata->outlen >= sizeof(__u64)) {
			ret = FUNC2(udata, &ip->offset,
					       sizeof(ip->offset));
			if (ret)
				return ret;
		}

		FUNC7(&rdi->pending_lock);
		if (FUNC5(&ip->pending_mmaps))
			FUNC4(&ip->pending_mmaps, &rdi->pending_mmaps);
		FUNC8(&rdi->pending_lock);
	}

	return 0;

bail_unlock:
	FUNC8(&cq->lock);
bail_free:
	FUNC10(u_wc);
	FUNC10(k_wc);

	return ret;
}