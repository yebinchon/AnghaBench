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
 int FUNC1 (struct mma8452_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mma8452_data*,int,int) ; 

__attribute__((used)) static int FUNC3(struct mma8452_data *data,
					   int val, int val2)
{
	int i, reg;

	i = FUNC2(data, val, val2);
	if (i < 0)
		return i;

	reg = FUNC0(data->client,
				       MMA8452_HP_FILTER_CUTOFF);
	if (reg < 0)
		return reg;

	reg &= ~MMA8452_HP_FILTER_CUTOFF_SEL_MASK;
	reg |= i;

	return FUNC1(data, MMA8452_HP_FILTER_CUTOFF, reg);
}