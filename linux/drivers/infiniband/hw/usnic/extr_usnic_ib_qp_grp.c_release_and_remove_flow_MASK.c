#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usnic_ib_qp_grp_flow {int trans_type; int /*<<< orphan*/  link; } ;

/* Variables and functions */
#define  USNIC_TRANSPORT_IPV4_UDP 129 
#define  USNIC_TRANSPORT_ROCE_CUSTOM 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usnic_ib_qp_grp_flow*) ; 
 int /*<<< orphan*/  FUNC3 (struct usnic_ib_qp_grp_flow*) ; 
 int /*<<< orphan*/  FUNC4 (struct usnic_ib_qp_grp_flow*) ; 

__attribute__((used)) static void FUNC5(struct usnic_ib_qp_grp_flow *qp_flow)
{
	FUNC4(qp_flow);
	FUNC1(&qp_flow->link);

	switch (qp_flow->trans_type) {
	case USNIC_TRANSPORT_ROCE_CUSTOM:
		FUNC2(qp_flow);
		break;
	case USNIC_TRANSPORT_IPV4_UDP:
		FUNC3(qp_flow);
		break;
	default:
		FUNC0(1, "Unsupported transport %u\n",
				qp_flow->trans_type);
		break;
	}
}