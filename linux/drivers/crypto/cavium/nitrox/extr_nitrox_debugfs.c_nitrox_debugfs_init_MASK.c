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
struct nitrox_device {struct dentry* debugfs_dir; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct nitrox_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  device_fops ; 
 int /*<<< orphan*/  firmware_fops ; 
 int /*<<< orphan*/  stats_fops ; 

void FUNC2(struct nitrox_device *ndev)
{
	struct dentry *dir;

	dir = FUNC0(KBUILD_MODNAME, NULL);

	ndev->debugfs_dir = dir;
	FUNC1("firmware", 0400, dir, ndev, &firmware_fops);
	FUNC1("device", 0400, dir, ndev, &device_fops);
	FUNC1("stats", 0400, dir, ndev, &stats_fops);
}