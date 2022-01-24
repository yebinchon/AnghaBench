#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct msm_gem_object {int /*<<< orphan*/  vram_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mm; } ;
struct msm_drm_private {TYPE_2__ vram; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct page** FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page**) ; 
 struct page** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC8 (struct drm_gem_object*) ; 

__attribute__((used)) static struct page **FUNC9(struct drm_gem_object *obj, int npages)
{
	struct msm_gem_object *msm_obj = FUNC8(obj);
	struct msm_drm_private *priv = obj->dev->dev_private;
	dma_addr_t paddr;
	struct page **p;
	int ret, i;

	p = FUNC3(npages, sizeof(struct page *), GFP_KERNEL);
	if (!p)
		return FUNC0(-ENOMEM);

	FUNC6(&priv->vram.lock);
	ret = FUNC1(&priv->vram.mm, msm_obj->vram_node, npages);
	FUNC7(&priv->vram.lock);
	if (ret) {
		FUNC2(p);
		return FUNC0(ret);
	}

	paddr = FUNC5(obj);
	for (i = 0; i < npages; i++) {
		p[i] = FUNC4(paddr);
		paddr += PAGE_SIZE;
	}

	return p;
}