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
struct TYPE_2__ {void* status; } ;
struct opa_vnic_vema_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct opa_vnic_adapter {int dummy; } ;
struct opa_veswport_mactable {int /*<<< orphan*/  num_entries; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 void* OPA_VNIC_INVAL_ATTR ; 
 int /*<<< orphan*/  FUNC0 (struct opa_vnic_adapter*,struct opa_veswport_mactable*) ; 
 struct opa_vnic_adapter* FUNC1 (struct opa_vnic_vema_mad*,struct opa_vnic_vema_port*) ; 
 scalar_t__ FUNC2 (struct opa_veswport_mactable*) ; 

__attribute__((used)) static void FUNC3(struct opa_vnic_vema_port *port,
				 struct opa_vnic_vema_mad *recvd_mad,
				 struct opa_vnic_vema_mad *rsp_mad)
{
	struct opa_veswport_mactable *mac_tbl_in, *mac_tbl_out;
	struct opa_vnic_adapter *adapter;

	adapter = FUNC1(recvd_mad, port);
	if (!adapter) {
		rsp_mad->mad_hdr.status = OPA_VNIC_INVAL_ATTR;
		return;
	}

	mac_tbl_in = (struct opa_veswport_mactable *)recvd_mad->data;
	mac_tbl_out = (struct opa_veswport_mactable *)rsp_mad->data;

	if (FUNC2(mac_tbl_in)) {
		mac_tbl_out->offset = mac_tbl_in->offset;
		mac_tbl_out->num_entries = mac_tbl_in->num_entries;
		FUNC0(adapter, mac_tbl_out);
	} else {
		rsp_mad->mad_hdr.status = OPA_VNIC_INVAL_ATTR;
	}
}