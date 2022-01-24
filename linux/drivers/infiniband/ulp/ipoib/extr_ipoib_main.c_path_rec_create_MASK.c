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
struct ipoib_path {int /*<<< orphan*/  neigh_list; int /*<<< orphan*/  queue; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  broadcast; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,struct ipoib_path*,void*) ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 struct ipoib_path* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ipoib_path *FUNC5(struct net_device *dev, void *gid)
{
	struct ipoib_dev_priv *priv = FUNC2(dev);
	struct ipoib_path *path;

	if (!priv->broadcast)
		return NULL;

	path = FUNC3(sizeof(*path), GFP_ATOMIC);
	if (!path)
		return NULL;

	FUNC4(&path->queue);

	FUNC0(&path->neigh_list);

	FUNC1(priv, path, gid);

	return path;
}