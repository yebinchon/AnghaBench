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
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  amdgpu_dmabuf_ops ; 
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC1 (struct drm_device*,struct dma_buf*) ; 

struct drm_gem_object *FUNC2(struct drm_device *dev,
					    struct dma_buf *dma_buf)
{
	struct drm_gem_object *obj;

	if (dma_buf->ops == &amdgpu_dmabuf_ops) {
		obj = dma_buf->priv;
		if (obj->dev == dev) {
			/*
			 * Importing dmabuf exported from out own gem increases
			 * refcount on gem itself instead of f_count of dmabuf.
			 */
			FUNC0(obj);
			return obj;
		}
	}

	return FUNC1(dev, dma_buf);
}