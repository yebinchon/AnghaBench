#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  depth; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ surf_size_struct ;
struct svga3d_surface_desc {int /*<<< orphan*/  bytes_per_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct svga3d_surface_desc const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (struct svga3d_surface_desc const*,TYPE_1__ const*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct svga3d_surface_desc const*) ; 

__attribute__((used)) static inline u32
FUNC4(const struct svga3d_surface_desc *desc,
				    const surf_size_struct *size,
				    u32 pitch)
{
	surf_size_struct image_blocks;
	u32 slice_size, total_size;

	FUNC2(desc, size, &image_blocks);

	if (FUNC3(desc)) {
		total_size = FUNC0(image_blocks.width,
					    image_blocks.height);
		total_size = FUNC0(total_size, image_blocks.depth);
		total_size = FUNC0(total_size, desc->bytes_per_block);
		return total_size;
	}

	if (pitch == 0)
		pitch = FUNC1(desc, size);

	slice_size = FUNC0(image_blocks.height, pitch);
	total_size = FUNC0(slice_size, image_blocks.depth);

	return total_size;
}