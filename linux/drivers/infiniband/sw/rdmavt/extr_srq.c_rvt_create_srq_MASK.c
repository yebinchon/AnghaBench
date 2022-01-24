#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_11__ {scalar_t__ size; scalar_t__ max_sge; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; } ;
struct rvt_srq {TYPE_4__ rq; TYPE_5__* ip; int /*<<< orphan*/  limit; } ;
struct rvt_rwqe {int dummy; } ;
struct rvt_rwq {int dummy; } ;
struct TYPE_9__ {scalar_t__ max_srq_sge; scalar_t__ max_srq_wr; scalar_t__ max_srq; } ;
struct TYPE_10__ {TYPE_2__ props; int /*<<< orphan*/  node; } ;
struct rvt_dev_info {scalar_t__ n_srqs_allocated; int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  pending_mmaps; int /*<<< orphan*/  n_srqs_lock; TYPE_3__ dparms; } ;
struct ib_udata {int outlen; } ;
struct TYPE_8__ {scalar_t__ max_sge; scalar_t__ max_wr; int /*<<< orphan*/  srq_limit; } ;
struct ib_srq_init_attr {scalar_t__ srq_type; TYPE_1__ attr; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct ib_sge {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_12__ {int /*<<< orphan*/  pending_mmaps; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ IB_SRQT_BASIC ; 
 int FUNC0 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 struct rvt_dev_info* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rvt_srq* FUNC2 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ ,struct ib_udata*) ; 
 TYPE_5__* FUNC6 (struct rvt_dev_info*,int,struct ib_udata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct ib_srq *ibsrq, struct ib_srq_init_attr *srq_init_attr,
		   struct ib_udata *udata)
{
	struct rvt_dev_info *dev = FUNC1(ibsrq->device);
	struct rvt_srq *srq = FUNC2(ibsrq);
	u32 sz;
	int ret;

	if (srq_init_attr->srq_type != IB_SRQT_BASIC)
		return -EOPNOTSUPP;

	if (srq_init_attr->attr.max_sge == 0 ||
	    srq_init_attr->attr.max_sge > dev->dparms.props.max_srq_sge ||
	    srq_init_attr->attr.max_wr == 0 ||
	    srq_init_attr->attr.max_wr > dev->dparms.props.max_srq_wr)
		return -EINVAL;

	/*
	 * Need to use vmalloc() if we want to support large #s of entries.
	 */
	srq->rq.size = srq_init_attr->attr.max_wr + 1;
	srq->rq.max_sge = srq_init_attr->attr.max_sge;
	sz = sizeof(struct ib_sge) * srq->rq.max_sge +
		sizeof(struct rvt_rwqe);
	if (FUNC5(&srq->rq, srq->rq.size * sz,
			 dev->dparms.node, udata)) {
		ret = -ENOMEM;
		goto bail_srq;
	}

	/*
	 * Return the address of the RWQ as the offset to mmap.
	 * See rvt_mmap() for details.
	 */
	if (udata && udata->outlen >= sizeof(__u64)) {
		u32 s = sizeof(struct rvt_rwq) + srq->rq.size * sz;

		srq->ip = FUNC6(dev, s, udata, srq->rq.wq);
		if (!srq->ip) {
			ret = -ENOMEM;
			goto bail_wq;
		}

		ret = FUNC0(udata, &srq->ip->offset,
				       sizeof(srq->ip->offset));
		if (ret)
			goto bail_ip;
	}

	/*
	 * ib_create_srq() will initialize srq->ibsrq.
	 */
	FUNC9(&srq->rq.lock);
	srq->limit = srq_init_attr->attr.srq_limit;

	FUNC8(&dev->n_srqs_lock);
	if (dev->n_srqs_allocated == dev->dparms.props.max_srq) {
		FUNC11(&dev->n_srqs_lock);
		ret = -ENOMEM;
		goto bail_ip;
	}

	dev->n_srqs_allocated++;
	FUNC11(&dev->n_srqs_lock);

	if (srq->ip) {
		FUNC10(&dev->pending_lock);
		FUNC4(&srq->ip->pending_mmaps, &dev->pending_mmaps);
		FUNC12(&dev->pending_lock);
	}

	return 0;

bail_ip:
	FUNC3(srq->ip);
bail_wq:
	FUNC7(&srq->rq);
bail_srq:
	return ret;
}