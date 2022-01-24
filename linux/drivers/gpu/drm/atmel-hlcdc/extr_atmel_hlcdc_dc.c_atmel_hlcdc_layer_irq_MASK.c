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
struct atmel_hlcdc_layer {TYPE_1__* desc; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ATMEL_HLCDC_BASE_LAYER ; 
 scalar_t__ ATMEL_HLCDC_CURSOR_LAYER ; 
 scalar_t__ ATMEL_HLCDC_OVERLAY_LAYER ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_hlcdc_layer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct atmel_hlcdc_layer *layer)
{
	if (!layer)
		return;

	if (layer->desc->type == ATMEL_HLCDC_BASE_LAYER ||
	    layer->desc->type == ATMEL_HLCDC_OVERLAY_LAYER ||
	    layer->desc->type == ATMEL_HLCDC_CURSOR_LAYER)
		FUNC1(FUNC0(layer));
}