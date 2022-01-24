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
typedef  int /*<<< orphan*/  u32 ;
struct hns_roce_dev {TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  cq; } ;
struct TYPE_6__ {TYPE_2__ cq_event; } ;
struct hns_roce_aeqe {TYPE_3__ event; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_M ; 
 int /*<<< orphan*/  HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_S ; 
#define  HNS_ROCE_EVENT_TYPE_CQ_ACCESS_ERROR 130 
#define  HNS_ROCE_EVENT_TYPE_CQ_ID_INVALID 129 
#define  HNS_ROCE_EVENT_TYPE_CQ_OVERFLOW 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hns_roce_dev *hr_dev,
				      struct hns_roce_aeqe *aeqe,
				      int event_type)
{
	struct device *dev = &hr_dev->pdev->dev;
	u32 cqn;

	cqn = FUNC2(aeqe->event.cq_event.cq,
			  HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_M,
			  HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_S);

	switch (event_type) {
	case HNS_ROCE_EVENT_TYPE_CQ_ACCESS_ERROR:
		FUNC0(dev, "CQ 0x%x access err.\n", cqn);
		break;
	case HNS_ROCE_EVENT_TYPE_CQ_OVERFLOW:
		FUNC0(dev, "CQ 0x%x overflow\n", cqn);
		break;
	case HNS_ROCE_EVENT_TYPE_CQ_ID_INVALID:
		FUNC0(dev, "CQ 0x%x ID invalid.\n", cqn);
		break;
	default:
		break;
	}

	FUNC1(hr_dev, cqn, event_type);
}