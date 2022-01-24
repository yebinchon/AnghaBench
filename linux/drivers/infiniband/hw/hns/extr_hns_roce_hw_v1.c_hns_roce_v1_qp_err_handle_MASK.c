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
struct hns_roce_dev {TYPE_1__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  qp; } ;
struct TYPE_5__ {TYPE_3__ qp_event; } ;
struct hns_roce_aeqe {TYPE_2__ event; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_AEQE_EVENT_QP_EVENT_PORT_NUM_M ; 
 int /*<<< orphan*/  HNS_ROCE_AEQE_EVENT_QP_EVENT_PORT_NUM_S ; 
 int /*<<< orphan*/  HNS_ROCE_AEQE_EVENT_QP_EVENT_QP_QPN_M ; 
 int /*<<< orphan*/  HNS_ROCE_AEQE_EVENT_QP_EVENT_QP_QPN_S ; 
#define  HNS_ROCE_EVENT_TYPE_INV_REQ_LOCAL_WQ_ERROR 130 
#define  HNS_ROCE_EVENT_TYPE_LOCAL_WQ_ACCESS_ERROR 129 
#define  HNS_ROCE_EVENT_TYPE_WQ_CATAS_ERROR 128 
 int HNS_ROCE_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,struct hns_roce_aeqe*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,struct hns_roce_aeqe*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hns_roce_dev *hr_dev,
				      struct hns_roce_aeqe *aeqe,
				      int event_type)
{
	struct device *dev = &hr_dev->pdev->dev;
	int phy_port;
	int qpn;

	qpn = FUNC4(aeqe->event.qp_event.qp,
			     HNS_ROCE_AEQE_EVENT_QP_EVENT_QP_QPN_M,
			     HNS_ROCE_AEQE_EVENT_QP_EVENT_QP_QPN_S);
	phy_port = FUNC4(aeqe->event.qp_event.qp,
				  HNS_ROCE_AEQE_EVENT_QP_EVENT_PORT_NUM_M,
				  HNS_ROCE_AEQE_EVENT_QP_EVENT_PORT_NUM_S);
	if (qpn <= 1)
		qpn = HNS_ROCE_MAX_PORTS * qpn + phy_port;

	switch (event_type) {
	case HNS_ROCE_EVENT_TYPE_INV_REQ_LOCAL_WQ_ERROR:
		FUNC0(dev, "Invalid Req Local Work Queue Error.\n"
			 "QP %d, phy_port %d.\n", qpn, phy_port);
		break;
	case HNS_ROCE_EVENT_TYPE_WQ_CATAS_ERROR:
		FUNC3(hr_dev, aeqe, qpn);
		break;
	case HNS_ROCE_EVENT_TYPE_LOCAL_WQ_ACCESS_ERROR:
		FUNC2(hr_dev, aeqe, qpn);
		break;
	default:
		break;
	}

	FUNC1(hr_dev, qpn, event_type);
}