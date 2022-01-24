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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  qp; int /*<<< orphan*/  flags; int /*<<< orphan*/  pkey; int /*<<< orphan*/  port; int /*<<< orphan*/  ca; } ;
struct ib_qp_attr {int /*<<< orphan*/  qkey; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_QP_QKEY ; 
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,union ib_gid*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_qp_attr*) ; 
 struct ib_qp_attr* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct net_device *dev, struct ib_device *hca,
		       union ib_gid *mgid, u16 mlid, int set_qkey, u32 qkey)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);
	struct ib_qp_attr *qp_attr = NULL;
	int ret;
	u16 pkey_index;

	if (FUNC2(priv->ca, priv->port, priv->pkey, &pkey_index)) {
		FUNC0(IPOIB_PKEY_ASSIGNED, &priv->flags);
		ret = -ENXIO;
		goto out;
	}
	FUNC8(IPOIB_PKEY_ASSIGNED, &priv->flags);

	if (set_qkey) {
		ret = -ENOMEM;
		qp_attr = FUNC7(sizeof(*qp_attr), GFP_KERNEL);
		if (!qp_attr)
			goto out;

		/* set correct QKey for QP */
		qp_attr->qkey = qkey;
		ret = FUNC3(priv->qp, qp_attr, IB_QP_QKEY);
		if (ret) {
			FUNC5(priv, "failed to modify QP, ret = %d\n", ret);
			goto out;
		}
	}

	/* attach QP to multicast group */
	ret = FUNC1(priv->qp, mgid, mlid);
	if (ret)
		FUNC5(priv, "failed to attach to multicast group, ret = %d\n", ret);

out:
	FUNC6(qp_attr);
	return ret;
}