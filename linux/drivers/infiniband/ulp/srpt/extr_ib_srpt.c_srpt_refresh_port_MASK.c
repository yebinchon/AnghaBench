#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_10__ {TYPE_3__ global; } ;
struct TYPE_7__ {struct srpt_port* priv; } ;
struct TYPE_6__ {struct srpt_port* priv; } ;
struct srpt_port {int /*<<< orphan*/  port; TYPE_4__* sdev; int /*<<< orphan*/ * mad_agent; int /*<<< orphan*/  port_gid; TYPE_5__ gid; TYPE_2__ port_gid_wwn; int /*<<< orphan*/  port_guid; TYPE_1__ port_guid_wwn; int /*<<< orphan*/  lid; int /*<<< orphan*/  sm_lid; } ;
struct ib_port_modify {void* clr_port_cap_mask; void* set_port_cap_mask; int /*<<< orphan*/  method_mask; int /*<<< orphan*/  mgmt_class_version; int /*<<< orphan*/  mgmt_class; } ;
struct ib_port_attr {int /*<<< orphan*/  lid; int /*<<< orphan*/  sm_lid; } ;
struct ib_mad_reg_req {void* clr_port_cap_mask; void* set_port_cap_mask; int /*<<< orphan*/  method_mask; int /*<<< orphan*/  mgmt_class_version; int /*<<< orphan*/  mgmt_class; } ;
typedef  int /*<<< orphan*/  reg_req ;
typedef  int /*<<< orphan*/  port_modify ;
struct TYPE_9__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MGMT_BASE_VERSION ; 
 int /*<<< orphan*/  IB_MGMT_CLASS_DEVICE_MGMT ; 
 int /*<<< orphan*/  IB_MGMT_METHOD_GET ; 
 int /*<<< orphan*/  IB_MGMT_METHOD_SET ; 
 void* IB_PORT_DEVICE_MGMT_SUP ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_port_modify*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_port_modify*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct srpt_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_port_modify*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srpt_mad_recv_handler ; 
 int /*<<< orphan*/  srpt_mad_send_handler ; 

__attribute__((used)) static int FUNC11(struct srpt_port *sport)
{
	struct ib_mad_reg_req reg_req;
	struct ib_port_modify port_modify;
	struct ib_port_attr port_attr;
	int ret;

	FUNC6(&port_modify, 0, sizeof(port_modify));
	port_modify.set_port_cap_mask = IB_PORT_DEVICE_MGMT_SUP;
	port_modify.clr_port_cap_mask = 0;

	ret = FUNC3(sport->sdev->device, sport->port, 0, &port_modify);
	if (ret)
		goto err_mod_port;

	ret = FUNC4(sport->sdev->device, sport->port, &port_attr);
	if (ret)
		goto err_query_port;

	sport->sm_lid = port_attr.sm_lid;
	sport->lid = port_attr.lid;

	ret = FUNC7(sport->sdev->device, sport->port, 0, &sport->gid);
	if (ret)
		goto err_query_port;

	sport->port_guid_wwn.priv = sport;
	FUNC10(sport->port_guid, sizeof(sport->port_guid),
			 &sport->gid.global.interface_id);
	sport->port_gid_wwn.priv = sport;
	FUNC9(sport->port_gid, sizeof(sport->port_gid),
		 "0x%016llx%016llx",
		 FUNC2(sport->gid.global.subnet_prefix),
		 FUNC2(sport->gid.global.interface_id));

	if (!sport->mad_agent) {
		FUNC6(&reg_req, 0, sizeof(reg_req));
		reg_req.mgmt_class = IB_MGMT_CLASS_DEVICE_MGMT;
		reg_req.mgmt_class_version = IB_MGMT_BASE_VERSION;
		FUNC8(IB_MGMT_METHOD_GET, reg_req.method_mask);
		FUNC8(IB_MGMT_METHOD_SET, reg_req.method_mask);

		sport->mad_agent = FUNC5(sport->sdev->device,
							 sport->port,
							 IB_QPT_GSI,
							 &reg_req, 0,
							 srpt_mad_send_handler,
							 srpt_mad_recv_handler,
							 sport, 0);
		if (FUNC0(sport->mad_agent)) {
			ret = FUNC1(sport->mad_agent);
			sport->mad_agent = NULL;
			goto err_query_port;
		}
	}

	return 0;

err_query_port:

	port_modify.set_port_cap_mask = 0;
	port_modify.clr_port_cap_mask = IB_PORT_DEVICE_MGMT_SUP;
	FUNC3(sport->sdev->device, sport->port, 0, &port_modify);

err_mod_port:

	return ret;
}