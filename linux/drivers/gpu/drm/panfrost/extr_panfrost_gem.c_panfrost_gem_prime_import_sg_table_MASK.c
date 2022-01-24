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
struct sg_table {int dummy; } ;
struct panfrost_gem_object {int noexec; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {int dummy; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (struct drm_gem_object*) ; 
 scalar_t__ FUNC1 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC2 (struct drm_device*,struct dma_buf_attachment*,struct sg_table*) ; 
 struct panfrost_gem_object* FUNC3 (struct drm_gem_object*) ; 

struct drm_gem_object *
FUNC4(struct drm_device *dev,
				   struct dma_buf_attachment *attach,
				   struct sg_table *sgt)
{
	struct drm_gem_object *obj;
	struct panfrost_gem_object *bo;

	obj = FUNC2(dev, attach, sgt);
	if (FUNC1(obj))
		return FUNC0(obj);

	bo = FUNC3(obj);
	bo->noexec = true;

	return obj;
}