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
struct ib_udata {int dummy; } ;
struct ib_cq_init_attr {int comp_vector; int cqe; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct hns_roce_ib_create_cq_resp {int /*<<< orphan*/  cqn; } ;
struct TYPE_4__ {int max_cqes; scalar_t__ min_cqes; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  hr_mtt; } ;
struct TYPE_5__ {int cqe; } ;
struct hns_roce_cq {int cq_depth; int /*<<< orphan*/  cqn; int /*<<< orphan*/  event; int /*<<< orphan*/  comp; scalar_t__* tptr_addr; TYPE_3__ hr_buf; int /*<<< orphan*/  lock; TYPE_2__ ib_cq; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct hns_roce_dev*,struct hns_roce_cq*,int) ; 
 int FUNC1 (struct hns_roce_dev*,struct hns_roce_cq*,struct ib_udata*,struct hns_roce_ib_create_cq_resp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,struct hns_roce_cq*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,struct hns_roce_cq*,struct ib_udata*,struct hns_roce_ib_create_cq_resp*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int FUNC5 (struct hns_roce_dev*,int,int /*<<< orphan*/ *,struct hns_roce_cq*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*,struct hns_roce_cq*) ; 
 int /*<<< orphan*/  hns_roce_ib_cq_comp ; 
 int /*<<< orphan*/  hns_roce_ib_cq_event ; 
 int FUNC7 (struct ib_udata*,struct hns_roce_ib_create_cq_resp*,int) ; 
 int FUNC8 (int,scalar_t__) ; 
 int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct hns_roce_cq* FUNC11 (struct ib_cq*) ; 
 struct hns_roce_dev* FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct ib_cq *ib_cq,
			  const struct ib_cq_init_attr *attr,
			  struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC12(ib_cq->device);
	struct device *dev = hr_dev->dev;
	struct hns_roce_ib_create_cq_resp resp = {};
	struct hns_roce_cq *hr_cq = FUNC11(ib_cq);
	int vector = attr->comp_vector;
	int cq_entries = attr->cqe;
	int ret;

	if (cq_entries < 1 || cq_entries > hr_dev->caps.max_cqes) {
		FUNC4(dev, "Creat CQ failed. entries=%d, max=%d\n",
			cq_entries, hr_dev->caps.max_cqes);
		return -EINVAL;
	}

	if (hr_dev->caps.min_cqes)
		cq_entries = FUNC8(cq_entries, hr_dev->caps.min_cqes);

	cq_entries = FUNC9((unsigned int)cq_entries);
	hr_cq->ib_cq.cqe = cq_entries - 1;
	FUNC10(&hr_cq->lock);

	if (udata) {
		ret = FUNC1(hr_dev, hr_cq, udata, &resp, cq_entries);
		if (ret) {
			FUNC4(dev, "Create cq failed in user mode!\n");
			goto err_cq;
		}
	} else {
		ret = FUNC0(hr_dev, hr_cq, cq_entries);
		if (ret) {
			FUNC4(dev, "Create cq failed in kernel mode!\n");
			goto err_cq;
		}
	}

	/* Allocate cq index, fill cq_context */
	ret = FUNC5(hr_dev, cq_entries, &hr_cq->hr_buf.hr_mtt,
				hr_cq, vector);
	if (ret) {
		FUNC4(dev, "Creat CQ .Failed to cq_alloc.\n");
		goto err_dbmap;
	}

	/*
	 * For the QP created by kernel space, tptr value should be initialized
	 * to zero; For the QP created by user space, it will cause synchronous
	 * problems if tptr is set to zero here, so we initialze it in user
	 * space.
	 */
	if (!udata && hr_cq->tptr_addr)
		*hr_cq->tptr_addr = 0;

	/* Get created cq handler and carry out event */
	hr_cq->comp = hns_roce_ib_cq_comp;
	hr_cq->event = hns_roce_ib_cq_event;
	hr_cq->cq_depth = cq_entries;

	if (udata) {
		resp.cqn = hr_cq->cqn;
		ret = FUNC7(udata, &resp, sizeof(resp));
		if (ret)
			goto err_cqc;
	}

	return 0;

err_cqc:
	FUNC6(hr_dev, hr_cq);

err_dbmap:
	if (udata)
		FUNC3(hr_dev, hr_cq, udata, &resp);
	else
		FUNC2(hr_dev, hr_cq);

err_cq:
	return ret;
}