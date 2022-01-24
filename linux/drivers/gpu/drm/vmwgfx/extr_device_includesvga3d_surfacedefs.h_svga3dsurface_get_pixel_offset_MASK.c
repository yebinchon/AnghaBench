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
typedef  int const u32 ;
struct TYPE_2__ {int width; int height; int depth; } ;
struct svga3d_surface_desc {int const bytes_per_block; TYPE_1__ block_size; } ;
typedef  int /*<<< orphan*/  SVGA3dSurfaceFormat ;

/* Variables and functions */
 int const FUNC0 (int const,int const) ; 
 struct svga3d_surface_desc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32
FUNC2(SVGA3dSurfaceFormat format,
			       u32 width, u32 height,
			       u32 x, u32 y, u32 z)
{
	const struct svga3d_surface_desc *desc = FUNC1(format);
	const u32 bw = desc->block_size.width, bh = desc->block_size.height;
	const u32 bd = desc->block_size.depth;
	const u32 rowstride = FUNC0(width, bw) *
			      desc->bytes_per_block;
	const u32 imgstride = FUNC0(height, bh) * rowstride;
	const u32 offset = (z / bd * imgstride +
			    y / bh * rowstride +
			    x / bw * desc->bytes_per_block);
	return offset;
}