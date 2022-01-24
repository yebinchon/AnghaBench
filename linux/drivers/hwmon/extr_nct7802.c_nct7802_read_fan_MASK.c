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
 int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  REG_FANCOUNT_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct nct7802_data *data, u8 reg_fan)
{
	unsigned int f1, f2;
	int ret;

	FUNC1(&data->access_lock);
	ret = FUNC3(data->regmap, reg_fan, &f1);
	if (ret < 0)
		goto abort;
	ret = FUNC3(data->regmap, REG_FANCOUNT_LOW, &f2);
	if (ret < 0)
		goto abort;
	ret = (f1 << 5) | (f2 >> 3);
	/* convert fan count to rpm */
	if (ret == 0x1fff)	/* maximum value, assume fan is stopped */
		ret = 0;
	else if (ret)
		ret = FUNC0(1350000U, ret);
abort:
	FUNC2(&data->access_lock);
	return ret;
}