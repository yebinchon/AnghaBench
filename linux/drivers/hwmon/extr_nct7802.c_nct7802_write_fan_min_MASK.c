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
typedef  int /*<<< orphan*/  u8 ;
struct nct7802_data {int /*<<< orphan*/  access_lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct nct7802_data *data, u8 reg_fan_low,
				 u8 reg_fan_high, unsigned long limit)
{
	int err;

	if (limit)
		limit = FUNC0(1350000U, limit);
	else
		limit = 0x1fff;
	limit = FUNC1(limit, 0, 0x1fff);

	FUNC2(&data->access_lock);
	err = FUNC4(data->regmap, reg_fan_low, limit & 0xff);
	if (err < 0)
		goto abort;

	err = FUNC4(data->regmap, reg_fan_high, (limit & 0x1f00) >> 5);
abort:
	FUNC3(&data->access_lock);
	return err;
}