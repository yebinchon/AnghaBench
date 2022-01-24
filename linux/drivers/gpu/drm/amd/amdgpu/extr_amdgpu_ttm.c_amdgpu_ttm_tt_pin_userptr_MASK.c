#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ttm_tt {int num_pages; TYPE_2__* sg; int /*<<< orphan*/  pages; int /*<<< orphan*/  bdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_address; } ;
struct amdgpu_ttm_tt {int userflags; TYPE_1__ ttm; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {unsigned int nents; int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int AMDGPU_GEM_USERPTR_READONLY ; 
 int DMA_BIDIRECTIONAL ; 
 int DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 struct amdgpu_device* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ttm_tt *ttm)
{
	struct amdgpu_device *adev = FUNC0(ttm->bdev);
	struct amdgpu_ttm_tt *gtt = (void *)ttm;
	unsigned nents;
	int r;

	int write = !(gtt->userflags & AMDGPU_GEM_USERPTR_READONLY);
	enum dma_data_direction direction = write ?
		DMA_BIDIRECTIONAL : DMA_TO_DEVICE;

	/* Allocate an SG array and squash pages into it */
	r = FUNC4(ttm->sg, ttm->pages, ttm->num_pages, 0,
				      ttm->num_pages << PAGE_SHIFT,
				      GFP_KERNEL);
	if (r)
		goto release_sg;

	/* Map SG to device */
	r = -ENOMEM;
	nents = FUNC1(adev->dev, ttm->sg->sgl, ttm->sg->nents, direction);
	if (nents != ttm->sg->nents)
		goto release_sg;

	/* convert SG to linear array of pages and dma addresses */
	FUNC2(ttm->sg, ttm->pages,
					 gtt->ttm.dma_address, ttm->num_pages);

	return 0;

release_sg:
	FUNC3(ttm->sg);
	return r;
}