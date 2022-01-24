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
struct net_device {int flags; int /*<<< orphan*/  name; } ;
struct ipoib_dev_priv {int /*<<< orphan*/ * wq; int /*<<< orphan*/ * pd; TYPE_1__* rn_ops; TYPE_2__* ca; int /*<<< orphan*/ * qp; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int (* ndo_init ) (struct net_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int IFF_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int FUNC7 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC9(dev);
	int ret = -ENOMEM;

	priv->qp = NULL;

	/*
	 * the various IPoIB tasks assume they will never race against
	 * themselves, so always use a single thread workqueue
	 */
	priv->wq = FUNC1("ipoib_wq", WQ_MEM_RECLAIM);
	if (!priv->wq) {
		FUNC10("%s: failed to allocate device WQ\n", dev->name);
		goto out;
	}

	/* create pd, which used both for control and datapath*/
	priv->pd = FUNC3(priv->ca, 0);
	if (FUNC0(priv->pd)) {
		FUNC10("%s: failed to allocate PD\n", priv->ca->name);
		goto clean_wq;
	}

	ret = priv->rn_ops->ndo_init(dev);
	if (ret) {
		FUNC10("%s failed to init HW resource\n", dev->name);
		goto out_free_pd;
	}

	ret = FUNC7(priv);
	if (ret) {
		FUNC10("%s failed to init neigh hash\n", dev->name);
		goto out_dev_uninit;
	}

	if (dev->flags & IFF_UP) {
		if (FUNC6(dev)) {
			FUNC10("%s failed to open device\n", dev->name);
			ret = -ENODEV;
			goto out_hash_uninit;
		}
	}

	return 0;

out_hash_uninit:
	FUNC8(dev);

out_dev_uninit:
	FUNC5(dev);

out_free_pd:
	if (priv->pd) {
		FUNC4(priv->pd);
		priv->pd = NULL;
	}

clean_wq:
	if (priv->wq) {
		FUNC2(priv->wq);
		priv->wq = NULL;
	}

out:
	return ret;
}