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
struct opa_vnic_vema_port {int dummy; } ;
struct opa_vnic_vema_mad {scalar_t__ data; } ;
struct opa_vnic_adapter {int dummy; } ;
struct opa_veswport_info {int /*<<< orphan*/  vport; int /*<<< orphan*/  vesw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opa_veswport_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct opa_vnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct opa_veswport_info*) ; 
 struct opa_vnic_adapter* FUNC4 (struct opa_vnic_vema_mad*,struct opa_vnic_vema_port*) ; 

__attribute__((used)) static void FUNC5(struct opa_vnic_vema_port *port,
				   struct opa_vnic_vema_mad *recvd_mad,
				   struct opa_vnic_vema_mad *rsp_mad)
{
	struct opa_veswport_info *port_info =
				  (struct opa_veswport_info *)rsp_mad->data;
	struct opa_vnic_adapter *adapter;

	adapter = FUNC4(recvd_mad, port);
	if (adapter) {
		FUNC0(port_info, 0, sizeof(*port_info));
		FUNC2(adapter, &port_info->vesw);
		FUNC1(adapter,
					       &port_info->vport);
	} else {
		FUNC3(port_info);
	}
}