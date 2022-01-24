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
struct drm_master {int /*<<< orphan*/  unique_len; int /*<<< orphan*/ * unique; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {int /*<<< orphan*/  unique; scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (struct drm_device*,struct drm_master*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_master*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev, struct drm_file *file_priv)
{
	struct drm_master *master = file_priv->master;
	int ret;

	if (master->unique != NULL)
		FUNC3(dev, master);

	if (dev->dev && FUNC1(dev->dev)) {
		ret = FUNC2(dev, master);
		if (ret) {
			FUNC3(dev, master);
			return ret;
		}
	} else {
		FUNC0(!dev->unique);
		master->unique = FUNC4(dev->unique, GFP_KERNEL);
		if (master->unique)
			master->unique_len = FUNC5(dev->unique);
	}

	return 0;
}