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
struct si1133_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI1133_IRQ_CHANNEL_ENABLE ; 
 int /*<<< orphan*/  SI1133_REG_IRQ_ENABLE ; 
 int /*<<< orphan*/  SI1133_REG_MEAS_RATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct si1133_data*) ; 
 int FUNC2 (struct si1133_data*) ; 
 int FUNC3 (struct si1133_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct si1133_data *data)
{
	int err;

	err = FUNC1(data);
	if (err)
		return err;

	/* Turn off autonomous mode */
	err = FUNC3(data, SI1133_REG_MEAS_RATE, 0);
	if (err)
		return err;

	err = FUNC2(data);
	if (err)
		return err;

	return FUNC0(data->regmap, SI1133_REG_IRQ_ENABLE,
			    SI1133_IRQ_CHANNEL_ENABLE);
}