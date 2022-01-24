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
struct drm_file {struct drm_exynos_file_private* driver_priv; } ;
struct drm_exynos_file_private {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_exynos_file_private*) ; 
 struct drm_exynos_file_private* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev, struct drm_file *file)
{
	struct drm_exynos_file_private *file_priv;
	int ret;

	file_priv = FUNC2(sizeof(*file_priv), GFP_KERNEL);
	if (!file_priv)
		return -ENOMEM;

	file->driver_priv = file_priv;
	ret = FUNC0(dev, file);
	if (ret)
		goto err_file_priv_free;

	return ret;

err_file_priv_free:
	FUNC1(file_priv);
	file->driver_priv = NULL;
	return ret;
}