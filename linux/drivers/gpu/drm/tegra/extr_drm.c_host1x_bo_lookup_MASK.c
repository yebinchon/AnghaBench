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
typedef  int /*<<< orphan*/  u32 ;
struct host1x_bo {int dummy; } ;
struct tegra_bo {struct host1x_bo base; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 struct tegra_bo* FUNC1 (struct drm_gem_object*) ; 

__attribute__((used)) static struct host1x_bo *
FUNC2(struct drm_file *file, u32 handle)
{
	struct drm_gem_object *gem;
	struct tegra_bo *bo;

	gem = FUNC0(file, handle);
	if (!gem)
		return NULL;

	bo = FUNC1(gem);
	return &bo->base;
}