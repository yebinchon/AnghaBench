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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  port; int /*<<< orphan*/  pkey; int /*<<< orphan*/  ca; } ;
struct ib_qp_attr {int /*<<< orphan*/  port_num; int /*<<< orphan*/  qp_access_flags; int /*<<< orphan*/  qp_state; int /*<<< orphan*/  pkey_index; } ;
struct ib_qp {int dummy; } ;
struct ib_cm_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ACCESS_LOCAL_WRITE ; 
 int /*<<< orphan*/  IB_QPS_INIT ; 
 int IB_QP_ACCESS_FLAGS ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_PORT ; 
 int IB_QP_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ib_qp*,struct ib_qp_attr*,int) ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int,...) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				  struct ib_cm_id *cm_id, struct ib_qp *qp)
{
	struct ipoib_dev_priv *priv = FUNC2(dev);
	struct ib_qp_attr qp_attr;
	int qp_attr_mask, ret;
	ret = FUNC0(priv->ca, priv->port, priv->pkey, &qp_attr.pkey_index);
	if (ret) {
		FUNC3(priv, "pkey 0x%x not found: %d\n", priv->pkey, ret);
		return ret;
	}

	qp_attr.qp_state = IB_QPS_INIT;
	qp_attr.qp_access_flags = IB_ACCESS_LOCAL_WRITE;
	qp_attr.port_num = priv->port;
	qp_attr_mask = IB_QP_STATE | IB_QP_ACCESS_FLAGS | IB_QP_PKEY_INDEX | IB_QP_PORT;

	ret = FUNC1(qp, &qp_attr, qp_attr_mask);
	if (ret) {
		FUNC3(priv, "failed to modify tx QP to INIT: %d\n", ret);
		return ret;
	}
	return 0;
}