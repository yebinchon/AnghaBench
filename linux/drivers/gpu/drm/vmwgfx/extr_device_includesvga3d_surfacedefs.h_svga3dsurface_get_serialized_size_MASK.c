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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  surf_size_struct ;
struct svga3d_surface_desc {int dummy; } ;
typedef  int /*<<< orphan*/  SVGA3dSurfaceFormat ;

/* Variables and functions */
 struct svga3d_surface_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct svga3d_surface_desc const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline u32
FUNC3(SVGA3dSurfaceFormat format,
				  surf_size_struct base_level_size,
				  u32 num_mip_levels,
				  u32 num_layers)
{
	const struct svga3d_surface_desc *desc = FUNC0(format);
	u32 total_size = 0;
	u32 mip;

	for (mip = 0; mip < num_mip_levels; mip++) {
		surf_size_struct size =
			FUNC2(base_level_size, mip);
		total_size += FUNC1(desc,
								  &size, 0);
	}

	return total_size * num_layers;
}