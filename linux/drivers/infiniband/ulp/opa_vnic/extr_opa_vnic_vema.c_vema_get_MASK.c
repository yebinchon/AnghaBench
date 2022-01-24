#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct opa_vnic_vema_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  attr_id; } ;
struct opa_vnic_vema_mad {TYPE_1__ mad_hdr; } ;

/* Variables and functions */
#define  OPA_EM_ATTR_CLASS_PORT_INFO 134 
#define  OPA_EM_ATTR_IFACE_MCAST_MACS 133 
#define  OPA_EM_ATTR_IFACE_UCAST_MACS 132 
#define  OPA_EM_ATTR_VESWPORT_ERROR_COUNTERS 131 
#define  OPA_EM_ATTR_VESWPORT_INFO 130 
#define  OPA_EM_ATTR_VESWPORT_MAC_ENTRIES 129 
#define  OPA_EM_ATTR_VESWPORT_SUMMARY_COUNTERS 128 
 int /*<<< orphan*/  OPA_VNIC_UNSUP_ATTR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ; 
 int /*<<< orphan*/  FUNC2 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ; 
 int /*<<< orphan*/  FUNC3 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ; 
 int /*<<< orphan*/  FUNC4 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ; 
 int /*<<< orphan*/  FUNC6 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ; 

__attribute__((used)) static void FUNC7(struct opa_vnic_vema_port *port,
		     struct opa_vnic_vema_mad *recvd_mad,
		     struct opa_vnic_vema_mad *rsp_mad)
{
	u16 attr_id = FUNC0(recvd_mad->mad_hdr.attr_id);

	switch (attr_id) {
	case OPA_EM_ATTR_CLASS_PORT_INFO:
		FUNC1(port, recvd_mad, rsp_mad);
		break;
	case OPA_EM_ATTR_VESWPORT_INFO:
		FUNC6(port, recvd_mad, rsp_mad);
		break;
	case OPA_EM_ATTR_VESWPORT_MAC_ENTRIES:
		FUNC3(port, recvd_mad, rsp_mad);
		break;
	case OPA_EM_ATTR_IFACE_UCAST_MACS:
		/* fall through */
	case OPA_EM_ATTR_IFACE_MCAST_MACS:
		FUNC4(port, recvd_mad, rsp_mad, attr_id);
		break;
	case OPA_EM_ATTR_VESWPORT_SUMMARY_COUNTERS:
		FUNC5(port, recvd_mad, rsp_mad);
		break;
	case OPA_EM_ATTR_VESWPORT_ERROR_COUNTERS:
		FUNC2(port, recvd_mad, rsp_mad);
		break;
	default:
		rsp_mad->mad_hdr.status = OPA_VNIC_UNSUP_ATTR;
		break;
	}
}