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
typedef  int /*<<< orphan*/  uint64_t ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;
struct dma_resv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct radeon_fence*) ; 
 int FUNC2 (struct radeon_fence*) ; 
#define  RADEON_BENCHMARK_COPY_BLIT 129 
#define  RADEON_BENCHMARK_COPY_DMA 128 
 unsigned int RADEON_GPU_PAGE_SIZE ; 
 unsigned long jiffies ; 
 int FUNC3 (unsigned long) ; 
 struct radeon_fence* FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct dma_resv*) ; 
 struct radeon_fence* FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_fence**) ; 
 int FUNC7 (struct radeon_fence*,int) ; 

__attribute__((used)) static int FUNC8(struct radeon_device *rdev, unsigned size,
				    uint64_t saddr, uint64_t daddr,
				    int flag, int n,
				    struct dma_resv *resv)
{
	unsigned long start_jiffies;
	unsigned long end_jiffies;
	struct radeon_fence *fence = NULL;
	int i, r;

	start_jiffies = jiffies;
	for (i = 0; i < n; i++) {
		switch (flag) {
		case RADEON_BENCHMARK_COPY_DMA:
			fence = FUNC5(rdev, saddr, daddr,
						size / RADEON_GPU_PAGE_SIZE,
						resv);
			break;
		case RADEON_BENCHMARK_COPY_BLIT:
			fence = FUNC4(rdev, saddr, daddr,
						 size / RADEON_GPU_PAGE_SIZE,
						 resv);
			break;
		default:
			FUNC0("Unknown copy method\n");
			return -EINVAL;
		}
		if (FUNC1(fence))
			return FUNC2(fence);

		r = FUNC7(fence, false);
		FUNC6(&fence);
		if (r)
			return r;
	}
	end_jiffies = jiffies;
	return FUNC3(end_jiffies - start_jiffies);
}