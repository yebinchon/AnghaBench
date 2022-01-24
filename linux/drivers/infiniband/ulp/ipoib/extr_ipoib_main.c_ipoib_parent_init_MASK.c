#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  raw; } ;
struct ipoib_dev_priv {scalar_t__ port; TYPE_6__* dev; TYPE_2__* ca; TYPE_3__ local_gid; int /*<<< orphan*/  pkey; int /*<<< orphan*/  max_ib_mtu; } ;
struct ib_port_attr {int /*<<< orphan*/  max_mtu; } ;
struct TYPE_10__ {scalar_t__ dev_id; scalar_t__ dev_port; scalar_t__ dev_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,scalar_t__,struct ib_port_attr*) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev)
{
	struct ipoib_dev_priv *priv = FUNC4(ndev);
	struct ib_port_attr attr;
	int result;

	result = FUNC3(priv->ca, priv->port, &attr);
	if (result) {
		FUNC6("%s: ib_query_port %d failed\n", priv->ca->name,
			priv->port);
		return result;
	}
	priv->max_ib_mtu = FUNC1(attr.max_mtu);

	result = FUNC2(priv->ca, priv->port, 0, &priv->pkey);
	if (result) {
		FUNC6("%s: ib_query_pkey port %d failed (ret = %d)\n",
			priv->ca->name, priv->port, result);
		return result;
	}

	result = FUNC7(priv->ca, priv->port, 0, &priv->local_gid);
	if (result) {
		FUNC6("%s: rdma_query_gid port %d failed (ret = %d)\n",
			priv->ca->name, priv->port, result);
		return result;
	}
	FUNC5(priv->dev->dev_addr + 4, priv->local_gid.raw,
	       sizeof(union ib_gid));

	FUNC0(priv->dev, priv->ca->dev.parent);
	priv->dev->dev_port = priv->port - 1;
	/* Let's set this one too for backwards compatibility. */
	priv->dev->dev_id = priv->port - 1;

	return 0;
}