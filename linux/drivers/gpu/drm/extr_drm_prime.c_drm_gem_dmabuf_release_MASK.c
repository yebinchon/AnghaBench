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
struct dma_buf {struct drm_gem_object* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 

void FUNC2(struct dma_buf *dma_buf)
{
	struct drm_gem_object *obj = dma_buf->priv;
	struct drm_device *dev = obj->dev;

	/* drop the reference on the export fd holds */
	FUNC1(obj);

	FUNC0(dev);
}