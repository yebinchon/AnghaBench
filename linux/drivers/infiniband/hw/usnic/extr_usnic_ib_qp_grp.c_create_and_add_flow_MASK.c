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
struct usnic_transport_spec {int trans_type; } ;
struct usnic_ib_qp_grp_flow {int /*<<< orphan*/  link; } ;
struct usnic_ib_qp_grp {int /*<<< orphan*/  flows_lst; } ;
typedef  enum usnic_transport_type { ____Placeholder_usnic_transport_type } usnic_transport_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct usnic_ib_qp_grp_flow* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usnic_ib_qp_grp_flow*) ; 
#define  USNIC_TRANSPORT_IPV4_UDP 129 
#define  USNIC_TRANSPORT_ROCE_CUSTOM 128 
 struct usnic_ib_qp_grp_flow* FUNC2 (struct usnic_ib_qp_grp*,struct usnic_transport_spec*) ; 
 struct usnic_ib_qp_grp_flow* FUNC3 (struct usnic_ib_qp_grp*,struct usnic_transport_spec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usnic_ib_qp_grp_flow*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static struct usnic_ib_qp_grp_flow*
FUNC7(struct usnic_ib_qp_grp *qp_grp,
			struct usnic_transport_spec *trans_spec)
{
	struct usnic_ib_qp_grp_flow *qp_flow;
	enum usnic_transport_type trans_type;

	trans_type = trans_spec->trans_type;
	switch (trans_type) {
	case USNIC_TRANSPORT_ROCE_CUSTOM:
		qp_flow = FUNC2(qp_grp, trans_spec);
		break;
	case USNIC_TRANSPORT_IPV4_UDP:
		qp_flow = FUNC3(qp_grp, trans_spec);
		break;
	default:
		FUNC6("Unsupported transport %u\n",
				trans_spec->trans_type);
		return FUNC0(-EINVAL);
	}

	if (!FUNC1(qp_flow)) {
		FUNC4(&qp_flow->link, &qp_grp->flows_lst);
		FUNC5(qp_flow);
	}


	return qp_flow;
}