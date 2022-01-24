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
struct scatterlist {int dummy; } ;
struct intel_remapped_info {TYPE_1__* plane; } ;
struct drm_i915_gem_object {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {unsigned int height; unsigned int width; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct scatterlist* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct drm_i915_gem_object*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,unsigned long,...) ; 
 unsigned long FUNC3 (struct intel_remapped_info const*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC4 (struct scatterlist*) ; 
 unsigned int FUNC5 (struct scatterlist*) ; 
 struct scatterlist* FUNC6 (struct scatterlist*) ; 

__attribute__((used)) static struct scatterlist *
FUNC7(struct drm_i915_gem_object *obj,
		const struct intel_remapped_info *r, unsigned int n,
		struct scatterlist *sg)
{
	unsigned int x, y;
	unsigned int left = 0;
	unsigned int offset;

	for (y = 0; y < r->plane[n].height; y++) {
		for (x = 0; x < r->plane[n].width; x++) {
			unsigned long src_idx;
			dma_addr_t src;

			if (!sg) {
				FUNC2("Invalid sg table: too short at plane %d, (%d, %d)!\n",
				       n, x, y);
				return FUNC0(-EINVAL);
			}
			if (!left) {
				offset = 0;
				left = FUNC5(sg);
			}

			src_idx = FUNC3(r, n, x, y);
			src = FUNC1(obj, src_idx);

			if (left < PAGE_SIZE || left & (PAGE_SIZE-1)) {
				FUNC2("Invalid sg.length, found %d, expected %lu for remapped page (%d, %d) [src index %lu]\n",
				       FUNC5(sg), PAGE_SIZE,
				       x, y, src_idx);
				return FUNC0(-EINVAL);
			}

			if (FUNC4(sg) + offset != src) {
				FUNC2("Invalid address for remapped page (%d, %d) [src index %lu]\n",
				       x, y, src_idx);
				return FUNC0(-EINVAL);
			}

			left -= PAGE_SIZE;
			offset += PAGE_SIZE;


			if (!left)
				sg = FUNC6(sg);
		}
	}

	return sg;
}