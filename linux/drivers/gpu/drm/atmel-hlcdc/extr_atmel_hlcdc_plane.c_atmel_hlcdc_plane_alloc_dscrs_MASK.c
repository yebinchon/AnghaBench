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
struct drm_plane {TYPE_1__* dev; } ;
struct atmel_hlcdc_plane_state {struct atmel_hlcdc_dma_channel_dscr** dscrs; } ;
struct atmel_hlcdc_dma_channel_dscr {void* self; int /*<<< orphan*/  ctrl; void* next; scalar_t__ addr; } ;
struct atmel_hlcdc_dc {int /*<<< orphan*/  dscrpool; } ;
typedef  void* dma_addr_t ;
struct TYPE_2__ {struct atmel_hlcdc_dc* dev_private; } ;

/* Variables and functions */
 int FUNC0 (struct atmel_hlcdc_dma_channel_dscr**) ; 
 int /*<<< orphan*/  ATMEL_HLCDC_LAYER_DFETCH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct atmel_hlcdc_dma_channel_dscr* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct atmel_hlcdc_dma_channel_dscr*,void*) ; 

__attribute__((used)) static int FUNC3(struct drm_plane *p,
					 struct atmel_hlcdc_plane_state *state)
{
	struct atmel_hlcdc_dc *dc = p->dev->dev_private;
	int i;

	for (i = 0; i < FUNC0(state->dscrs); i++) {
		struct atmel_hlcdc_dma_channel_dscr *dscr;
		dma_addr_t dscr_dma;

		dscr = FUNC1(dc->dscrpool, GFP_KERNEL, &dscr_dma);
		if (!dscr)
			goto err;

		dscr->addr = 0;
		dscr->next = dscr_dma;
		dscr->self = dscr_dma;
		dscr->ctrl = ATMEL_HLCDC_LAYER_DFETCH;

		state->dscrs[i] = dscr;
	}

	return 0;

err:
	for (i--; i >= 0; i--) {
		FUNC2(dc->dscrpool, state->dscrs[i],
			      state->dscrs[i]->self);
	}

	return -ENOMEM;
}