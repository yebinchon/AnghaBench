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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ipoib_path {int /*<<< orphan*/  query; } ;
struct ipoib_neigh {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct ipoib_path* FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct ipoib_path*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ipoib_neigh *neigh, u8 *daddr,
			       struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC1(dev);
	struct ipoib_path *path;
	unsigned long flags;

	FUNC3(&priv->lock, flags);

	path = FUNC0(dev, daddr + 4);
	if (!path)
		goto out;
	if (!path->query)
		FUNC2(dev, path);
out:
	FUNC4(&priv->lock, flags);
}