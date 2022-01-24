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
typedef  int u32 ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_2__* state; } ;
struct TYPE_3__ {int /*<<< orphan*/  visible; } ;
struct atmel_hlcdc_plane_state {TYPE_1__ base; } ;
struct atmel_hlcdc_plane {int /*<<< orphan*/  layer; } ;
struct TYPE_4__ {int /*<<< orphan*/  fb; int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int ATMEL_HLCDC_LAYER_A2Q ; 
 int /*<<< orphan*/  ATMEL_HLCDC_LAYER_CHER ; 
 int /*<<< orphan*/  ATMEL_HLCDC_LAYER_CHSR ; 
 int ATMEL_HLCDC_LAYER_EN ; 
 int /*<<< orphan*/  ATMEL_HLCDC_LAYER_IER ; 
 int FUNC0 (int) ; 
 int ATMEL_HLCDC_LAYER_UPDATE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct atmel_hlcdc_plane*,struct atmel_hlcdc_plane_state*) ; 
 struct atmel_hlcdc_plane_state* FUNC10 (TYPE_2__*) ; 
 struct atmel_hlcdc_plane* FUNC11 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC12(struct drm_plane *p,
					    struct drm_plane_state *old_s)
{
	struct atmel_hlcdc_plane *plane = FUNC11(p);
	struct atmel_hlcdc_plane_state *state =
			FUNC10(p->state);
	u32 sr;

	if (!p->state->crtc || !p->state->fb)
		return;

	if (!state->base.visible) {
		FUNC3(p, old_s);
		return;
	}

	FUNC9(plane, state);
	FUNC8(plane, state);
	FUNC7(plane, state);
	FUNC5(plane, state);
	FUNC4(plane, state);
	FUNC6(plane, state);

	/* Enable the overrun interrupts. */
	FUNC2(&plane->layer, ATMEL_HLCDC_LAYER_IER,
				    FUNC0(0) |
				    FUNC0(1) |
				    FUNC0(2));

	/* Apply the new config at the next SOF event. */
	sr = FUNC1(&plane->layer, ATMEL_HLCDC_LAYER_CHSR);
	FUNC2(&plane->layer, ATMEL_HLCDC_LAYER_CHER,
			ATMEL_HLCDC_LAYER_UPDATE |
			(sr & ATMEL_HLCDC_LAYER_EN ?
			 ATMEL_HLCDC_LAYER_A2Q : ATMEL_HLCDC_LAYER_EN));
}