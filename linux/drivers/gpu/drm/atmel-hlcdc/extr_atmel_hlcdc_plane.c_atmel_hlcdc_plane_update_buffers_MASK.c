#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct drm_gem_cma_object {scalar_t__ paddr; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_7__ {struct drm_framebuffer* fb; } ;
struct atmel_hlcdc_plane_state {int nplanes; int /*<<< orphan*/ * pstride; int /*<<< orphan*/ * xstride; TYPE_2__** dscrs; scalar_t__* offsets; TYPE_1__ base; } ;
struct TYPE_10__ {struct atmel_hlcdc_layer_desc* desc; } ;
struct atmel_hlcdc_plane {TYPE_4__ layer; } ;
struct TYPE_9__ {scalar_t__* pstride; scalar_t__* xstride; } ;
struct atmel_hlcdc_layer_desc {TYPE_3__ layout; } ;
struct TYPE_8__ {scalar_t__ self; scalar_t__ ctrl; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_HLCDC_LAYER_CHSR ; 
 int ATMEL_HLCDC_LAYER_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct drm_gem_cma_object* FUNC7 (struct drm_framebuffer*,int) ; 

__attribute__((used)) static void FUNC8(struct atmel_hlcdc_plane *plane,
					struct atmel_hlcdc_plane_state *state)
{
	const struct atmel_hlcdc_layer_desc *desc = plane->layer.desc;
	struct drm_framebuffer *fb = state->base.fb;
	u32 sr;
	int i;

	sr = FUNC4(&plane->layer, ATMEL_HLCDC_LAYER_CHSR);

	for (i = 0; i < state->nplanes; i++) {
		struct drm_gem_cma_object *gem = FUNC7(fb, i);

		state->dscrs[i]->addr = gem->paddr + state->offsets[i];

		FUNC6(&plane->layer,
					    FUNC2(i),
					    state->dscrs[i]->self);

		if (!(sr & ATMEL_HLCDC_LAYER_EN)) {
			FUNC6(&plane->layer,
					FUNC0(i),
					state->dscrs[i]->addr);
			FUNC6(&plane->layer,
					FUNC1(i),
					state->dscrs[i]->ctrl);
			FUNC6(&plane->layer,
					FUNC3(i),
					state->dscrs[i]->self);
		}

		if (desc->layout.xstride[i])
			FUNC5(&plane->layer,
						    desc->layout.xstride[i],
						    state->xstride[i]);

		if (desc->layout.pstride[i])
			FUNC5(&plane->layer,
						    desc->layout.pstride[i],
						    state->pstride[i]);
	}
}