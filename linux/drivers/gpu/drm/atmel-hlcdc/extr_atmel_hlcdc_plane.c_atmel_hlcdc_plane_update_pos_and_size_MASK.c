#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct atmel_hlcdc_plane_state {int /*<<< orphan*/  crtc_y; int /*<<< orphan*/  crtc_x; int /*<<< orphan*/  src_h; int /*<<< orphan*/  src_w; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_w; } ;
struct TYPE_4__ {struct atmel_hlcdc_layer_desc* desc; } ;
struct atmel_hlcdc_plane {TYPE_2__ layer; } ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ memsize; scalar_t__ size; } ;
struct atmel_hlcdc_layer_desc {TYPE_1__ layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ; 

__attribute__((used)) static void
FUNC4(struct atmel_hlcdc_plane *plane,
				      struct atmel_hlcdc_plane_state *state)
{
	const struct atmel_hlcdc_layer_desc *desc = plane->layer.desc;

	if (desc->layout.size)
		FUNC2(&plane->layer, desc->layout.size,
					FUNC1(state->crtc_w,
							       state->crtc_h));

	if (desc->layout.memsize)
		FUNC2(&plane->layer,
					desc->layout.memsize,
					FUNC1(state->src_w,
							       state->src_h));

	if (desc->layout.pos)
		FUNC2(&plane->layer, desc->layout.pos,
					FUNC0(state->crtc_x,
							      state->crtc_y));

	FUNC3(plane, state);
}