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
struct nct7802_data {int /*<<< orphan*/  access_lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/ ** REG_VOLTAGE_LIMIT_LSB ; 
 int /*<<< orphan*/ * REG_VOLTAGE_LIMIT_MSB ; 
 int** REG_VOLTAGE_LIMIT_MSB_SHIFT ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int* nct7802_vmul ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct nct7802_data *data, int nr, int index,
				 unsigned long voltage)
{
	int shift = 8 - REG_VOLTAGE_LIMIT_MSB_SHIFT[index - 1][nr];
	int err;

	voltage = FUNC1(voltage, 0, 0x3ff * nct7802_vmul[nr]);
	voltage = FUNC0(voltage, nct7802_vmul[nr]);

	FUNC2(&data->access_lock);
	err = FUNC5(data->regmap,
			   REG_VOLTAGE_LIMIT_LSB[index - 1][nr],
			   voltage & 0xff);
	if (err < 0)
		goto abort;

	err = FUNC4(data->regmap, REG_VOLTAGE_LIMIT_MSB[nr],
				 0x0300 >> shift, (voltage & 0x0300) >> shift);
abort:
	FUNC3(&data->access_lock);
	return err;
}