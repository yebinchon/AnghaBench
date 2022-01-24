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
struct drm_device {struct atmel_hlcdc_dc* dev_private; } ;
struct atmel_hlcdc_dc {TYPE_1__* hlcdc; scalar_t__* layers; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_HLCDC_IER ; 
 unsigned int FUNC0 (int) ; 
 int ATMEL_HLCDC_MAX_LAYERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev)
{
	struct atmel_hlcdc_dc *dc = dev->dev_private;
	unsigned int cfg = 0;
	int i;

	/* Enable interrupts on activated layers */
	for (i = 0; i < ATMEL_HLCDC_MAX_LAYERS; i++) {
		if (dc->layers[i])
			cfg |= FUNC0(i);
	}

	FUNC1(dc->hlcdc->regmap, ATMEL_HLCDC_IER, cfg);

	return 0;
}