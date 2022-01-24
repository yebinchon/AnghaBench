#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct ib_port_modify {scalar_t__ clr_port_cap_mask; scalar_t__ set_port_cap_mask; } ;
struct ib_mad_reg_req {int /*<<< orphan*/  method_mask; int /*<<< orphan*/  mgmt_class_version; int /*<<< orphan*/  mgmt_class; } ;
struct TYPE_3__ {int /*<<< orphan*/  local_ca_ack_delay; } ;
struct ib_device {int phys_port_cnt; TYPE_1__ attrs; } ;
struct cm_port {int port_num; int /*<<< orphan*/  mad_agent; struct cm_port** port; int /*<<< orphan*/  list; int /*<<< orphan*/  cm_priv_altr_list; int /*<<< orphan*/  cm_priv_prim_list; struct cm_port* cm_dev; scalar_t__ going_down; int /*<<< orphan*/  ack_delay; struct ib_device* ib_device; } ;
struct cm_device {int port_num; int /*<<< orphan*/  mad_agent; struct cm_device** port; int /*<<< orphan*/  list; int /*<<< orphan*/  cm_priv_altr_list; int /*<<< orphan*/  cm_priv_prim_list; struct cm_device* cm_dev; scalar_t__ going_down; int /*<<< orphan*/  ack_delay; struct ib_device* ib_device; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  device_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_CM_CLASS_VERSION ; 
 int /*<<< orphan*/  IB_MGMT_CLASS_CM ; 
 int /*<<< orphan*/  IB_MGMT_METHOD_SEND ; 
 scalar_t__ IB_PORT_CM_SUP ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ cm ; 
 int /*<<< orphan*/  cm_client ; 
 int FUNC2 (struct cm_port*) ; 
 int /*<<< orphan*/  cm_recv_handler ; 
 int /*<<< orphan*/  FUNC3 (struct cm_port*) ; 
 int /*<<< orphan*/  cm_send_handler ; 
 int FUNC4 (struct ib_device*,int,int /*<<< orphan*/ ,struct ib_port_modify*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,int,int /*<<< orphan*/ ,struct ib_mad_reg_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cm_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,int /*<<< orphan*/ *,struct cm_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cm_port*) ; 
 struct cm_port* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct cm_port*,struct cm_port*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC16(struct ib_device *ib_device)
{
	struct cm_device *cm_dev;
	struct cm_port *port;
	struct ib_mad_reg_req reg_req = {
		.mgmt_class = IB_MGMT_CLASS_CM,
		.mgmt_class_version = IB_CM_CLASS_VERSION,
	};
	struct ib_port_modify port_modify = {
		.set_port_cap_mask = IB_PORT_CM_SUP
	};
	unsigned long flags;
	int ret;
	int count = 0;
	u8 i;

	cm_dev = FUNC9(FUNC13(cm_dev, port, ib_device->phys_port_cnt),
			 GFP_KERNEL);
	if (!cm_dev)
		return;

	cm_dev->ib_device = ib_device;
	cm_dev->ack_delay = ib_device->attrs.local_ca_ack_delay;
	cm_dev->going_down = 0;

	FUNC12(IB_MGMT_METHOD_SEND, reg_req.method_mask);
	for (i = 1; i <= ib_device->phys_port_cnt; i++) {
		if (!FUNC11(ib_device, i))
			continue;

		port = FUNC9(sizeof *port, GFP_KERNEL);
		if (!port)
			goto error1;

		cm_dev->port[i-1] = port;
		port->cm_dev = cm_dev;
		port->port_num = i;

		FUNC0(&port->cm_priv_prim_list);
		FUNC0(&port->cm_priv_altr_list);

		ret = FUNC2(port);
		if (ret)
			goto error1;

		port->mad_agent = FUNC5(ib_device, i,
							IB_QPT_GSI,
							&reg_req,
							0,
							cm_send_handler,
							cm_recv_handler,
							port,
							0);
		if (FUNC1(port->mad_agent))
			goto error2;

		ret = FUNC4(ib_device, i, 0, &port_modify);
		if (ret)
			goto error3;

		count++;
	}

	if (!count)
		goto free;

	FUNC6(ib_device, &cm_client, cm_dev);

	FUNC14(&cm.device_lock, flags);
	FUNC10(&cm_dev->list, &cm.device_list);
	FUNC15(&cm.device_lock, flags);
	return;

error3:
	FUNC7(port->mad_agent);
error2:
	FUNC3(port);
error1:
	port_modify.set_port_cap_mask = 0;
	port_modify.clr_port_cap_mask = IB_PORT_CM_SUP;
	FUNC8(port);
	while (--i) {
		if (!FUNC11(ib_device, i))
			continue;

		port = cm_dev->port[i-1];
		FUNC4(ib_device, port->port_num, 0, &port_modify);
		FUNC7(port->mad_agent);
		FUNC3(port);
		FUNC8(port);
	}
free:
	FUNC8(cm_dev);
}