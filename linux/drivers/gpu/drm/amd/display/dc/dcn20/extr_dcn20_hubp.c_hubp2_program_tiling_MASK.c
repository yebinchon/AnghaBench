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
struct TYPE_2__ {int /*<<< orphan*/  swizzle; int /*<<< orphan*/  max_compressed_frags; int /*<<< orphan*/  pipe_interleave; int /*<<< orphan*/  num_pipes; } ;
union dc_tiling_info {TYPE_1__ gfx9; } ;
struct dcn20_hubp {int dummy; } ;
typedef  enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;

/* Variables and functions */
 int /*<<< orphan*/  DCSURF_ADDR_CONFIG ; 
 int /*<<< orphan*/  DCSURF_TILING_CONFIG ; 
 int /*<<< orphan*/  MAX_COMPRESSED_FRAGS ; 
 int /*<<< orphan*/  META_LINEAR ; 
 int /*<<< orphan*/  NUM_PIPES ; 
 int /*<<< orphan*/  PIPE_ALIGNED ; 
 int /*<<< orphan*/  PIPE_INTERLEAVE ; 
 int /*<<< orphan*/  RB_ALIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_MODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	struct dcn20_hubp *hubp2,
	const union dc_tiling_info *info,
	const enum surface_pixel_format pixel_format)
{
	FUNC0(DCSURF_ADDR_CONFIG,
			NUM_PIPES, FUNC2(info->gfx9.num_pipes),
			PIPE_INTERLEAVE, info->gfx9.pipe_interleave,
			MAX_COMPRESSED_FRAGS, FUNC2(info->gfx9.max_compressed_frags));

	FUNC1(DCSURF_TILING_CONFIG,
			SW_MODE, info->gfx9.swizzle,
			META_LINEAR, 0,
			RB_ALIGNED, 0,
			PIPE_ALIGNED, 0);
}