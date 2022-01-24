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
struct svga3d_surface_desc {int dummy; } ;
typedef  size_t SVGA3dSurfaceFormat ;

/* Variables and functions */
 size_t FUNC0 (struct svga3d_surface_desc const*) ; 
 size_t SVGA3D_FORMAT_INVALID ; 
 struct svga3d_surface_desc const* svga3d_surface_descs ; 

__attribute__((used)) static inline const struct svga3d_surface_desc *
FUNC1(SVGA3dSurfaceFormat format)
{
	if (format < FUNC0(svga3d_surface_descs))
		return &svga3d_surface_descs[format];

	return &svga3d_surface_descs[SVGA3D_FORMAT_INVALID];
}