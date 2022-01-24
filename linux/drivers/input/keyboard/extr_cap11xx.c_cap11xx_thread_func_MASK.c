#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cap11xx_priv {TYPE_1__* idev; int /*<<< orphan*/ * keycodes; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int keycodemax; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP11XX_REG_MAIN_CONTROL ; 
 int /*<<< orphan*/  CAP11XX_REG_SENSOR_INPUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq_num, void *data)
{
	struct cap11xx_priv *priv = data;
	unsigned int status;
	int ret, i;

	/*
	 * Deassert interrupt. This needs to be done before reading the status
	 * registers, which will not carry valid values otherwise.
	 */
	ret = FUNC3(priv->regmap, CAP11XX_REG_MAIN_CONTROL, 1, 0);
	if (ret < 0)
		goto out;

	ret = FUNC2(priv->regmap, CAP11XX_REG_SENSOR_INPUT, &status);
	if (ret < 0)
		goto out;

	for (i = 0; i < priv->idev->keycodemax; i++)
		FUNC0(priv->idev, priv->keycodes[i],
				 status & (1 << i));

	FUNC1(priv->idev);

out:
	return IRQ_HANDLED;
}