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
typedef  int /*<<< orphan*/  u8 ;
struct opa_vnic_vema_port {struct opa_vnic_ctrl_port* cport; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct opa_vnic_vema_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct opa_vnic_ctrl_port {int dummy; } ;
struct opa_vnic_adapter {int dummy; } ;
struct opa_veswport_info {int /*<<< orphan*/  vport; int /*<<< orphan*/  vesw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct opa_vnic_adapter*) ; 
 int /*<<< orphan*/  OPA_VNIC_INVAL_ATTR ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct opa_vnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct opa_vnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct opa_vnic_adapter*,int /*<<< orphan*/ *) ; 
 struct opa_vnic_adapter* FUNC6 (struct opa_vnic_vema_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ; 
 struct opa_vnic_adapter* FUNC8 (struct opa_vnic_vema_mad*,struct opa_vnic_vema_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct opa_vnic_vema_mad*) ; 

__attribute__((used)) static void FUNC10(struct opa_vnic_vema_port *port,
				   struct opa_vnic_vema_mad *recvd_mad,
				   struct opa_vnic_vema_mad *rsp_mad)
{
	struct opa_vnic_ctrl_port *cport = port->cport;
	struct opa_veswport_info *port_info;
	struct opa_vnic_adapter *adapter;
	u8 vport_num;

	vport_num = FUNC9(recvd_mad);

	adapter = FUNC8(recvd_mad, port);
	if (!adapter) {
		adapter = FUNC6(port, vport_num);
		if (FUNC0(adapter)) {
			FUNC2("failed to add vport %d: %ld\n",
			      vport_num, FUNC1(adapter));
			goto err_exit;
		}
	}

	port_info = (struct opa_veswport_info *)recvd_mad->data;
	FUNC5(adapter, &port_info->vesw);
	FUNC4(adapter, &port_info->vport);

	/* Process the new config settings */
	FUNC3(adapter);

	FUNC7(port, recvd_mad, rsp_mad);
	return;

err_exit:
	rsp_mad->mad_hdr.status = OPA_VNIC_INVAL_ATTR;
}