#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tiler_block {int dummy; } ;
struct omap_gem_object {scalar_t__ dma_addr_cnt; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  dma_addr; struct tiler_block* block; int /*<<< orphan*/  roll; int /*<<< orphan*/  pages; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct omap_drm_private {scalar_t__ has_dmm; } ;
struct drm_gem_object {int size; TYPE_1__* dev; } ;
typedef  enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct omap_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tiler_block*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct tiler_block*) ; 
 int OMAP_BO_TILED ; 
 int PAGE_SHIFT ; 
 int FUNC3 (struct tiler_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct drm_gem_object*) ; 
 scalar_t__ FUNC9 (struct omap_gem_object*) ; 
 int FUNC10 (struct tiler_block*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tiler_block*) ; 
 struct tiler_block* FUNC12 (int) ; 
 struct tiler_block* FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tiler_block*) ; 
 struct omap_gem_object* FUNC15 (struct drm_gem_object*) ; 

int FUNC16(struct drm_gem_object *obj, dma_addr_t *dma_addr)
{
	struct omap_drm_private *priv = obj->dev->dev_private;
	struct omap_gem_object *omap_obj = FUNC15(obj);
	int ret = 0;

	FUNC6(&omap_obj->lock);

	if (!FUNC9(omap_obj) && priv->has_dmm) {
		if (omap_obj->dma_addr_cnt == 0) {
			u32 npages = obj->size >> PAGE_SHIFT;
			enum tiler_fmt fmt = FUNC5(omap_obj->flags);
			struct tiler_block *block;

			FUNC0(omap_obj->block);

			ret = FUNC8(obj);
			if (ret)
				goto fail;

			if (omap_obj->flags & OMAP_BO_TILED) {
				block = FUNC13(fmt,
						omap_obj->width,
						omap_obj->height, 0);
			} else {
				block = FUNC12(obj->size);
			}

			if (FUNC2(block)) {
				ret = FUNC3(block);
				FUNC4(obj->dev->dev,
					"could not remap: %d (%d)\n", ret, fmt);
				goto fail;
			}

			/* TODO: enable async refill.. */
			ret = FUNC10(block, omap_obj->pages, npages,
					omap_obj->roll, true);
			if (ret) {
				FUNC11(block);
				FUNC4(obj->dev->dev,
						"could not pin: %d\n", ret);
				goto fail;
			}

			omap_obj->dma_addr = FUNC14(block);
			omap_obj->block = block;

			FUNC1("got dma address: %pad", &omap_obj->dma_addr);
		}

		omap_obj->dma_addr_cnt++;

		*dma_addr = omap_obj->dma_addr;
	} else if (FUNC9(omap_obj)) {
		*dma_addr = omap_obj->dma_addr;
	} else {
		ret = -EINVAL;
		goto fail;
	}

fail:
	FUNC7(&omap_obj->lock);

	return ret;
}