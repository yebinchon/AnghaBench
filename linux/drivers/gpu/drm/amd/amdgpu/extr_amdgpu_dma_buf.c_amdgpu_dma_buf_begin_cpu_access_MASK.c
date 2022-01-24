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
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct dma_buf {int /*<<< orphan*/  priv; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {int allowed_domains; int /*<<< orphan*/  placement; TYPE_1__ tbo; int /*<<< orphan*/  pin_count; int /*<<< orphan*/  flags; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int AMDGPU_GEM_DOMAIN_GTT ; 
 int DMA_BIDIRECTIONAL ; 
 int DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*,int) ; 
 int FUNC1 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 int FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC4 (int /*<<< orphan*/ ) ; 
 struct amdgpu_bo* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct dma_buf *dma_buf,
					   enum dma_data_direction direction)
{
	struct amdgpu_bo *bo = FUNC5(dma_buf->priv);
	struct amdgpu_device *adev = FUNC4(bo->tbo.bdev);
	struct ttm_operation_ctx ctx = { true, false };
	u32 domain = FUNC3(adev, bo->flags);
	int ret;
	bool reads = (direction == DMA_BIDIRECTIONAL ||
		      direction == DMA_FROM_DEVICE);

	if (!reads || !(domain & AMDGPU_GEM_DOMAIN_GTT))
		return 0;

	/* move to gtt */
	ret = FUNC1(bo, false);
	if (FUNC7(ret != 0))
		return ret;

	if (!bo->pin_count && (bo->allowed_domains & AMDGPU_GEM_DOMAIN_GTT)) {
		FUNC0(bo, AMDGPU_GEM_DOMAIN_GTT);
		ret = FUNC6(&bo->tbo, &bo->placement, &ctx);
	}

	FUNC2(bo);
	return ret;
}