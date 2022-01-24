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
struct ipoib_dev_priv {int /*<<< orphan*/  neigh_reap_task; int /*<<< orphan*/  ah_reap_task; int /*<<< orphan*/  restart_task; int /*<<< orphan*/  flush_heavy; int /*<<< orphan*/  flush_normal; int /*<<< orphan*/  flush_light; int /*<<< orphan*/  carrier_on_task; int /*<<< orphan*/  mcast_task; int /*<<< orphan*/  multicast_list; int /*<<< orphan*/  dead_ahs; int /*<<< orphan*/  child_intfs; int /*<<< orphan*/  path_list; int /*<<< orphan*/  mcast_mutex; int /*<<< orphan*/  vlan_rwsem; int /*<<< orphan*/  lock; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipoib_ib_dev_flush_heavy ; 
 int /*<<< orphan*/  ipoib_ib_dev_flush_light ; 
 int /*<<< orphan*/  ipoib_ib_dev_flush_normal ; 
 int /*<<< orphan*/  ipoib_mcast_carrier_on_task ; 
 int /*<<< orphan*/  ipoib_mcast_join_task ; 
 int /*<<< orphan*/  ipoib_mcast_restart_task ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  ipoib_reap_ah ; 
 int /*<<< orphan*/  ipoib_reap_neigh ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);

	priv->dev = dev;
	FUNC6(&priv->lock);
	FUNC3(&priv->vlan_rwsem);
	FUNC5(&priv->mcast_mutex);

	FUNC1(&priv->path_list);
	FUNC1(&priv->child_intfs);
	FUNC1(&priv->dead_ahs);
	FUNC1(&priv->multicast_list);

	FUNC0(&priv->mcast_task,   ipoib_mcast_join_task);
	FUNC2(&priv->carrier_on_task, ipoib_mcast_carrier_on_task);
	FUNC2(&priv->flush_light,   ipoib_ib_dev_flush_light);
	FUNC2(&priv->flush_normal,   ipoib_ib_dev_flush_normal);
	FUNC2(&priv->flush_heavy,   ipoib_ib_dev_flush_heavy);
	FUNC2(&priv->restart_task, ipoib_mcast_restart_task);
	FUNC0(&priv->ah_reap_task, ipoib_reap_ah);
	FUNC0(&priv->neigh_reap_task, ipoib_reap_neigh);
}