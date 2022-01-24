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
struct sg_table {int dummy; } ;
struct rcar_du_vsp {int /*<<< orphan*/  vsp; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
struct TYPE_2__ {unsigned int num_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sg_table*) ; 

void FUNC2(struct rcar_du_vsp *vsp, struct drm_framebuffer *fb,
			  struct sg_table sg_tables[3])
{
	unsigned int i;

	for (i = 0; i < fb->format->num_planes; ++i) {
		struct sg_table *sgt = &sg_tables[i];

		FUNC1(vsp->vsp, sgt);
		FUNC0(sgt);
	}
}