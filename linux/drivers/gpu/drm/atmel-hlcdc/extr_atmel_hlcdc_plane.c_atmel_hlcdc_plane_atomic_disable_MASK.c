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
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct atmel_hlcdc_plane {int /*<<< orphan*/  layer; } ;

/* Variables and functions */
 int ATMEL_HLCDC_LAYER_A2Q ; 
 int /*<<< orphan*/  ATMEL_HLCDC_LAYER_CHDR ; 
 int /*<<< orphan*/  ATMEL_HLCDC_LAYER_IDR ; 
 int /*<<< orphan*/  ATMEL_HLCDC_LAYER_ISR ; 
 int ATMEL_HLCDC_LAYER_RST ; 
 int ATMEL_HLCDC_LAYER_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct atmel_hlcdc_plane* FUNC2 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *p,
					     struct drm_plane_state *old_state)
{
	struct atmel_hlcdc_plane *plane = FUNC2(p);

	/* Disable interrupts */
	FUNC1(&plane->layer, ATMEL_HLCDC_LAYER_IDR,
				    0xffffffff);

	/* Disable the layer */
	FUNC1(&plane->layer, ATMEL_HLCDC_LAYER_CHDR,
				    ATMEL_HLCDC_LAYER_RST |
				    ATMEL_HLCDC_LAYER_A2Q |
				    ATMEL_HLCDC_LAYER_UPDATE);

	/* Clear all pending interrupts */
	FUNC0(&plane->layer, ATMEL_HLCDC_LAYER_ISR);
}