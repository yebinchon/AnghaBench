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
struct opa_vnic_vema_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct opa_vnic_vema_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct opa_vnic_adapter {int dummy; } ;
struct opa_veswport_info {int /*<<< orphan*/  vport; int /*<<< orphan*/  vesw; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPA_VNIC_INVAL_ATTR ; 
 int /*<<< orphan*/  FUNC0 (struct opa_vnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct opa_vnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct opa_vnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct opa_veswport_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ; 
 struct opa_vnic_adapter* FUNC6 (struct opa_vnic_vema_mad*,struct opa_vnic_vema_port*) ; 

__attribute__((used)) static void FUNC7(struct opa_vnic_vema_port *port,
				 struct opa_vnic_vema_mad *recvd_mad,
				 struct opa_vnic_vema_mad *rsp_mad)
{
	struct opa_veswport_info *port_info =
				  (struct opa_veswport_info *)rsp_mad->data;
	struct opa_vnic_adapter *adapter;

	adapter = FUNC6(recvd_mad, port);
	if (!adapter) {
		rsp_mad->mad_hdr.status = OPA_VNIC_INVAL_ATTR;
		return;
	}

	FUNC4(port_info);
	FUNC3(adapter, &port_info->vesw);
	FUNC2(adapter, &port_info->vport);

	/* Process the new config settings */
	FUNC0(adapter);

	FUNC1(adapter);

	FUNC5(port, recvd_mad, rsp_mad);
}