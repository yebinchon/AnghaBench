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
struct drm_nouveau_gem_info {int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int FUNC2 (struct drm_file*,struct drm_gem_object*,struct drm_nouveau_gem_info*) ; 

int
FUNC3(struct drm_device *dev, void *data,
		       struct drm_file *file_priv)
{
	struct drm_nouveau_gem_info *req = data;
	struct drm_gem_object *gem;
	int ret;

	gem = FUNC0(file_priv, req->handle);
	if (!gem)
		return -ENOENT;

	ret = FUNC2(file_priv, gem, req);
	FUNC1(gem);
	return ret;
}