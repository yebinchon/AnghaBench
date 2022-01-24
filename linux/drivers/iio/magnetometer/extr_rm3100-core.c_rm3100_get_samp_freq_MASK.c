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
struct rm3100_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int IIO_VAL_INT_PLUS_MICRO ; 
 int /*<<< orphan*/  RM3100_REG_TMRC ; 
 unsigned int RM3100_TMRC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int** rm3100_samp_rates ; 

__attribute__((used)) static int FUNC3(struct rm3100_data *data, int *val, int *val2)
{
	unsigned int tmp;
	int ret;

	FUNC0(&data->lock);
	ret = FUNC2(data->regmap, RM3100_REG_TMRC, &tmp);
	FUNC1(&data->lock);
	if (ret < 0)
		return ret;
	*val = rm3100_samp_rates[tmp - RM3100_TMRC_OFFSET][0];
	*val2 = rm3100_samp_rates[tmp - RM3100_TMRC_OFFSET][1];

	return IIO_VAL_INT_PLUS_MICRO;
}