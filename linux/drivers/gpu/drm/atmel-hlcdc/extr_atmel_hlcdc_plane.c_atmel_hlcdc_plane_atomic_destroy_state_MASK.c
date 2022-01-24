#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_plane_state {scalar_t__ fb; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct atmel_hlcdc_plane_state {TYPE_2__** dscrs; } ;
struct atmel_hlcdc_dc {int /*<<< orphan*/  dscrpool; } ;
struct TYPE_5__ {int /*<<< orphan*/  self; } ;
struct TYPE_4__ {struct atmel_hlcdc_dc* dev_private; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct atmel_hlcdc_plane_state* FUNC3 (struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_hlcdc_plane_state*) ; 

__attribute__((used)) static void FUNC5(struct drm_plane *p,
						   struct drm_plane_state *s)
{
	struct atmel_hlcdc_plane_state *state =
			FUNC3(s);
	struct atmel_hlcdc_dc *dc = p->dev->dev_private;
	int i;

	for (i = 0; i < FUNC0(state->dscrs); i++) {
		FUNC1(dc->dscrpool, state->dscrs[i],
			      state->dscrs[i]->self);
	}

	if (s->fb)
		FUNC2(s->fb);

	FUNC4(state);
}