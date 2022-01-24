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
struct nouveau_bo {int dummy; } ;
struct drm_nouveau_gem_cpu_fini {int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bo*) ; 
 struct nouveau_bo* FUNC3 (struct drm_gem_object*) ; 

int
FUNC4(struct drm_device *dev, void *data,
			   struct drm_file *file_priv)
{
	struct drm_nouveau_gem_cpu_fini *req = data;
	struct drm_gem_object *gem;
	struct nouveau_bo *nvbo;

	gem = FUNC0(file_priv, req->handle);
	if (!gem)
		return -ENOENT;
	nvbo = FUNC3(gem);

	FUNC2(nvbo);
	FUNC1(gem);
	return 0;
}