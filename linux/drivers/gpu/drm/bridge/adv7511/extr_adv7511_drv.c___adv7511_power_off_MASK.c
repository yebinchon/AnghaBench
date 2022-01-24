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
struct adv7511 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7511_INT1_DDC_ERROR ; 
 int /*<<< orphan*/  ADV7511_POWER_POWER_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ADV7511_REG_POWER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct adv7511 *adv7511)
{
	/* TODO: setup additional power down modes */
	FUNC2(adv7511->regmap, ADV7511_REG_POWER,
			   ADV7511_POWER_POWER_DOWN,
			   ADV7511_POWER_POWER_DOWN);
	FUNC2(adv7511->regmap,
			   FUNC0(1),
			   ADV7511_INT1_DDC_ERROR, 0);
	FUNC1(adv7511->regmap);
}