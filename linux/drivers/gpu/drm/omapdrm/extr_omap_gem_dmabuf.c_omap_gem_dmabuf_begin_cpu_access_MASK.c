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
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int ENOMEM ; 
 int OMAP_BO_TILED ; 
 int FUNC0 (struct drm_gem_object*) ; 
 int FUNC1 (struct drm_gem_object*,struct page***,int) ; 

__attribute__((used)) static int FUNC2(struct dma_buf *buffer,
		enum dma_data_direction dir)
{
	struct drm_gem_object *obj = buffer->priv;
	struct page **pages;
	if (FUNC0(obj) & OMAP_BO_TILED) {
		/* TODO we would need to pin at least part of the buffer to
		 * get de-tiled view.  For now just reject it.
		 */
		return -ENOMEM;
	}
	/* make sure we have the pages: */
	return FUNC1(obj, &pages, true);
}