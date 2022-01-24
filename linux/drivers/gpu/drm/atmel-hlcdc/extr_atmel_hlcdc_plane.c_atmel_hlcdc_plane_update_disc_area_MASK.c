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
struct atmel_hlcdc_plane_state {int /*<<< orphan*/  disc_h; int /*<<< orphan*/  disc_w; int /*<<< orphan*/  disc_y; int /*<<< orphan*/  disc_x; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct atmel_hlcdc_plane {TYPE_2__ layer; } ;
struct atmel_hlcdc_layer_cfg_layout {int /*<<< orphan*/  disc_size; int /*<<< orphan*/  disc_pos; } ;
struct TYPE_3__ {struct atmel_hlcdc_layer_cfg_layout layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct atmel_hlcdc_plane *plane,
				   struct atmel_hlcdc_plane_state *state)
{
	const struct atmel_hlcdc_layer_cfg_layout *layout;

	layout = &plane->layer.desc->layout;
	if (!layout->disc_pos || !layout->disc_size)
		return;

	FUNC2(&plane->layer, layout->disc_pos,
				FUNC0(state->disc_x,
							   state->disc_y));

	FUNC2(&plane->layer, layout->disc_size,
				FUNC1(state->disc_w,
							    state->disc_h));
}