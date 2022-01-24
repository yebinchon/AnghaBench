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
typedef  scalar_t__ u8 ;
struct nct7802_data {int /*<<< orphan*/  access_lock; int /*<<< orphan*/  regmap; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct nct7802_data *data,
			     u8 reg_temp, u8 reg_temp_low, int *temp)
{
	unsigned int t1, t2 = 0;
	int err;

	*temp = 0;

	FUNC0(&data->access_lock);
	err = FUNC2(data->regmap, reg_temp, &t1);
	if (err < 0)
		goto abort;
	t1 <<= 8;
	if (reg_temp_low) {	/* 11 bit data */
		err = FUNC2(data->regmap, reg_temp_low, &t2);
		if (err < 0)
			goto abort;
	}
	t1 |= t2 & 0xe0;
	*temp = (s16)t1 / 32 * 125;
abort:
	FUNC1(&data->access_lock);
	return err;
}