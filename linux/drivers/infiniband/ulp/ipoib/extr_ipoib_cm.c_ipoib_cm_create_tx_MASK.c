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
struct net_device {int dummy; } ;
struct ipoib_path {int dummy; } ;
struct ipoib_neigh {struct ipoib_cm_tx* cm; } ;
struct TYPE_2__ {int /*<<< orphan*/  start_task; int /*<<< orphan*/  start_list; } ;
struct ipoib_dev_priv {TYPE_1__ cm; int /*<<< orphan*/  wq; } ;
struct ipoib_cm_tx {int /*<<< orphan*/  flags; int /*<<< orphan*/  list; struct net_device* dev; struct ipoib_neigh* neigh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 struct ipoib_dev_priv* FUNC0 (struct net_device*) ; 
 struct ipoib_cm_tx* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct ipoib_cm_tx *FUNC5(struct net_device *dev, struct ipoib_path *path,
				       struct ipoib_neigh *neigh)
{
	struct ipoib_dev_priv *priv = FUNC0(dev);
	struct ipoib_cm_tx *tx;

	tx = FUNC1(sizeof(*tx), GFP_ATOMIC);
	if (!tx)
		return NULL;

	neigh->cm = tx;
	tx->neigh = neigh;
	tx->dev = dev;
	FUNC2(&tx->list, &priv->cm.start_list);
	FUNC4(IPOIB_FLAG_INITIALIZED, &tx->flags);
	FUNC3(priv->wq, &priv->cm.start_task);
	return tx;
}