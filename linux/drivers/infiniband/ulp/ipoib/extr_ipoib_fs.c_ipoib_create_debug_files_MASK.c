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
struct net_device {char* name; } ;
struct ipoib_dev_priv {void* path_dentry; void* mcg_dentry; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 void* FUNC0 (char*,int,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipoib_mcg_fops ; 
 int /*<<< orphan*/  ipoib_path_fops ; 
 struct ipoib_dev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  ipoib_root ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

void FUNC3(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC1(dev);
	char name[IFNAMSIZ + sizeof("_path")];

	FUNC2(name, sizeof(name), "%s_mcg", dev->name);
	priv->mcg_dentry = FUNC0(name, S_IFREG | S_IRUGO,
					       ipoib_root, dev, &ipoib_mcg_fops);

	FUNC2(name, sizeof(name), "%s_path", dev->name);
	priv->path_dentry = FUNC0(name, S_IFREG | S_IRUGO,
						ipoib_root, dev, &ipoib_path_fops);
}