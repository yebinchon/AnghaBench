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
struct ib_mad_port_private {int port_num; int /*<<< orphan*/  pd; int /*<<< orphan*/ * qp_info; int /*<<< orphan*/  cq; int /*<<< orphan*/  wq; int /*<<< orphan*/  port_list; struct ib_device* device; int /*<<< orphan*/  reg_lock; } ;
struct ib_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_MGMT_MAD_SIZE ; 
 int /*<<< orphan*/  IB_POLL_UNBOUND_WORKQUEUE ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  IB_QPT_SMI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OPA_MGMT_MAD_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_device*,struct ib_mad_port_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_mad_port_list ; 
 int /*<<< orphan*/  ib_mad_port_list_lock ; 
 int FUNC13 (struct ib_mad_port_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_mad_port_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ib_mad_port_private*) ; 
 struct ib_mad_port_private* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int mad_recvq_size ; 
 int mad_sendq_size ; 
 int FUNC19 (struct ib_device*,int) ; 
 scalar_t__ FUNC20 (struct ib_device*,int) ; 
 scalar_t__ FUNC21 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC26(struct ib_device *device,
			    int port_num)
{
	int ret, cq_size;
	struct ib_mad_port_private *port_priv;
	unsigned long flags;
	char name[sizeof "ib_mad123"];
	int has_smi;

	if (FUNC2(FUNC21(device, port_num) < IB_MGMT_MAD_SIZE))
		return -EFAULT;

	if (FUNC2(FUNC20(device, port_num) &&
		    FUNC21(device, port_num) < OPA_MGMT_MAD_SIZE))
		return -EFAULT;

	/* Create new device info */
	port_priv = FUNC16(sizeof *port_priv, GFP_KERNEL);
	if (!port_priv)
		return -ENOMEM;

	port_priv->device = device;
	port_priv->port_num = port_num;
	FUNC23(&port_priv->reg_lock);
	FUNC14(port_priv, &port_priv->qp_info[0]);
	FUNC14(port_priv, &port_priv->qp_info[1]);

	cq_size = mad_sendq_size + mad_recvq_size;
	has_smi = FUNC19(device, port_num);
	if (has_smi)
		cq_size *= 2;

	port_priv->pd = FUNC10(device, 0);
	if (FUNC0(port_priv->pd)) {
		FUNC8(&device->dev, "Couldn't create ib_mad PD\n");
		ret = FUNC1(port_priv->pd);
		goto error3;
	}

	port_priv->cq = FUNC9(port_priv->device, port_priv, cq_size, 0,
			IB_POLL_UNBOUND_WORKQUEUE);
	if (FUNC0(port_priv->cq)) {
		FUNC8(&device->dev, "Couldn't create ib_mad CQ\n");
		ret = FUNC1(port_priv->cq);
		goto error4;
	}

	if (has_smi) {
		ret = FUNC5(&port_priv->qp_info[0], IB_QPT_SMI);
		if (ret)
			goto error6;
	}
	ret = FUNC5(&port_priv->qp_info[1], IB_QPT_GSI);
	if (ret)
		goto error7;

	FUNC22(name, sizeof name, "ib_mad%d", port_num);
	port_priv->wq = FUNC3(name, WQ_MEM_RECLAIM);
	if (!port_priv->wq) {
		ret = -ENOMEM;
		goto error8;
	}

	FUNC24(&ib_mad_port_list_lock, flags);
	FUNC17(&port_priv->port_list, &ib_mad_port_list);
	FUNC25(&ib_mad_port_list_lock, flags);

	ret = FUNC13(port_priv);
	if (ret) {
		FUNC8(&device->dev, "Couldn't start port\n");
		goto error9;
	}

	return 0;

error9:
	FUNC24(&ib_mad_port_list_lock, flags);
	FUNC18(&port_priv->port_list);
	FUNC25(&ib_mad_port_list_lock, flags);

	FUNC7(port_priv->wq);
error8:
	FUNC6(&port_priv->qp_info[1]);
error7:
	FUNC6(&port_priv->qp_info[0]);
error6:
	FUNC12(port_priv->cq);
	FUNC4(&port_priv->qp_info[1]);
	FUNC4(&port_priv->qp_info[0]);
error4:
	FUNC11(port_priv->pd);
error3:
	FUNC15(port_priv);

	return ret;
}