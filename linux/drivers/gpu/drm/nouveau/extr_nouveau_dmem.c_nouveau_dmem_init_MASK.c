#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {unsigned long start; } ;
struct page {struct nouveau_dmem_chunk* zone_device_data; } ;
struct TYPE_8__ {scalar_t__ family; int /*<<< orphan*/  ram_user; } ;
struct TYPE_9__ {TYPE_2__ info; } ;
struct TYPE_10__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_5__* dmem; TYPE_4__ client; TYPE_1__* dev; } ;
struct nouveau_dmem_chunk {unsigned long pfn_first; int /*<<< orphan*/  list; struct nouveau_drm* drm; } ;
struct device {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ops; struct resource res; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {int /*<<< orphan*/  chunk_empty; TYPE_6__ pagemap; int /*<<< orphan*/  chunk_full; int /*<<< orphan*/  chunk_free; int /*<<< orphan*/  mutex; struct nouveau_drm* drm; } ;
struct TYPE_7__ {struct device* dev; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long DMEM_CHUNK_NPAGES ; 
 unsigned long DMEM_CHUNK_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  MEMORY_DEVICE_PRIVATE ; 
 scalar_t__ NV_DEVICE_INFO_V0_PASCAL ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_drm*,char*,unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 struct resource* FUNC4 (struct device*,TYPE_6__*) ; 
 struct resource* FUNC5 (struct device*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  iomem_resource ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nouveau_drm*) ; 
 int FUNC11 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  nouveau_dmem_pagemap_ops ; 
 struct page* FUNC12 (unsigned long) ; 

void
FUNC13(struct nouveau_drm *drm)
{
	struct device *device = drm->dev->dev;
	struct resource *res;
	unsigned long i, size, pfn_first;
	int ret;

	/* This only make sense on PASCAL or newer */
	if (drm->client.device.info.family < NV_DEVICE_INFO_V0_PASCAL)
		return;

	if (!(drm->dmem = FUNC7(sizeof(*drm->dmem), GFP_KERNEL)))
		return;

	drm->dmem->drm = drm;
	FUNC9(&drm->dmem->mutex);
	FUNC1(&drm->dmem->chunk_free);
	FUNC1(&drm->dmem->chunk_full);
	FUNC1(&drm->dmem->chunk_empty);

	size = FUNC0(drm->client.device.info.ram_user, DMEM_CHUNK_SIZE);

	/* Initialize migration dma helpers before registering memory */
	ret = FUNC11(drm);
	if (ret)
		goto out_free;

	/*
	 * FIXME we need some kind of policy to decide how much VRAM we
	 * want to register with HMM. For now just register everything
	 * and latter if we want to do thing like over commit then we
	 * could revisit this.
	 */
	res = FUNC5(device, &iomem_resource, size);
	if (FUNC2(res))
		goto out_free;
	drm->dmem->pagemap.type = MEMORY_DEVICE_PRIVATE;
	drm->dmem->pagemap.res = *res;
	drm->dmem->pagemap.ops = &nouveau_dmem_pagemap_ops;
	if (FUNC2(FUNC4(device, &drm->dmem->pagemap)))
		goto out_free;

	pfn_first = res->start >> PAGE_SHIFT;
	for (i = 0; i < (size / DMEM_CHUNK_SIZE); ++i) {
		struct nouveau_dmem_chunk *chunk;
		struct page *page;
		unsigned long j;

		chunk = FUNC7(sizeof(*chunk), GFP_KERNEL);
		if (chunk == NULL) {
			FUNC10(drm);
			return;
		}

		chunk->drm = drm;
		chunk->pfn_first = pfn_first + (i * DMEM_CHUNK_NPAGES);
		FUNC8(&chunk->list, &drm->dmem->chunk_empty);

		page = FUNC12(chunk->pfn_first);
		for (j = 0; j < DMEM_CHUNK_NPAGES; ++j, ++page)
			page->zone_device_data = chunk;
	}

	FUNC3(drm, "DMEM: registered %ldMB of device memory\n", size >> 20);
	return;
out_free:
	FUNC6(drm->dmem);
	drm->dmem = NULL;
}