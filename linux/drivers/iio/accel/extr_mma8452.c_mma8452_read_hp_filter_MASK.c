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
struct mma8452_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMA8452_HP_FILTER_CUTOFF ; 
 int MMA8452_HP_FILTER_CUTOFF_SEL_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mma8452_data*) ; 
 int FUNC2 (struct mma8452_data*) ; 
 int**** mma8452_hp_filter_cutoff ; 

__attribute__((used)) static int FUNC3(struct mma8452_data *data, int *hz, int *uHz)
{
	int j, i, ret;

	ret = FUNC0(data->client, MMA8452_HP_FILTER_CUTOFF);
	if (ret < 0)
		return ret;

	i = FUNC1(data);
	j = FUNC2(data);
	if (j < 0)
		return j;

	ret &= MMA8452_HP_FILTER_CUTOFF_SEL_MASK;
	*hz = mma8452_hp_filter_cutoff[j][i][ret][0];
	*uHz = mma8452_hp_filter_cutoff[j][i][ret][1];

	return 0;
}