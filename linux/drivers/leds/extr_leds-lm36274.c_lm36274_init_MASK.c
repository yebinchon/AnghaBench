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
struct lm36274 {int num_leds; int* led_sources; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int LM36274_BL_EN ; 
 int /*<<< orphan*/  LM36274_REG_BL_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct lm36274 *lm36274_data)
{
	int enable_val = 0;
	int i;

	for (i = 0; i < lm36274_data->num_leds; i++)
		enable_val |= (1 << lm36274_data->led_sources[i]);

	if (!enable_val) {
		FUNC0(lm36274_data->dev, "No LEDs were enabled\n");
		return -EINVAL;
	}

	enable_val |= LM36274_BL_EN;

	return FUNC1(lm36274_data->regmap, LM36274_REG_BL_EN,
			    enable_val);
}