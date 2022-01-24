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
struct da906x_chip_config {unsigned int onkey_nonkey_mask; int /*<<< orphan*/  onkey_status; } ;
struct da9063_onkey {int /*<<< orphan*/  dev; int /*<<< orphan*/  input; int /*<<< orphan*/  work; scalar_t__ key_power; int /*<<< orphan*/  regmap; struct da906x_chip_config* config; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct da9063_onkey *onkey = data;
	const struct da906x_chip_config *config = onkey->config;
	unsigned int val;
	int error;

	error = FUNC3(onkey->regmap,
			    config->onkey_status,
			    &val);
	if (onkey->key_power && !error && (val & config->onkey_nonkey_mask)) {
		FUNC1(onkey->input, KEY_POWER, 1);
		FUNC2(onkey->input);
		FUNC4(&onkey->work, 0);
		FUNC0(onkey->dev, "KEY_POWER long press.\n");
	} else {
		FUNC1(onkey->input, KEY_POWER, 1);
		FUNC2(onkey->input);
		FUNC1(onkey->input, KEY_POWER, 0);
		FUNC2(onkey->input);
		FUNC0(onkey->dev, "KEY_POWER short press.\n");
	}

	return IRQ_HANDLED;
}