#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * id; } ;
struct ipoib_dev_priv {TYPE_2__ cm; TYPE_1__* qp; TYPE_3__* ca; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int qp_num; } ;

/* Variables and functions */
 int IPOIB_CM_IETF_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipoib_cm_rx_handler ; 
 struct ipoib_dev_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 

int FUNC9(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC7(dev);
	int ret;

	if (!FUNC0(dev->dev_addr))
		return 0;

	priv->cm.id = FUNC5(priv->ca, ipoib_cm_rx_handler, dev);
	if (FUNC1(priv->cm.id)) {
		FUNC8("%s: failed to create CM ID\n", priv->ca->name);
		ret = FUNC2(priv->cm.id);
		goto err_cm;
	}

	ret = FUNC4(priv->cm.id, FUNC3(IPOIB_CM_IETF_ID | priv->qp->qp_num),
			   0);
	if (ret) {
		FUNC8("%s: failed to listen on ID 0x%llx\n", priv->ca->name,
			IPOIB_CM_IETF_ID | priv->qp->qp_num);
		goto err_listen;
	}

	return 0;

err_listen:
	FUNC6(priv->cm.id);
err_cm:
	priv->cm.id = NULL;
	return ret;
}