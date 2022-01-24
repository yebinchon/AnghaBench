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
struct ltr501_data {int /*<<< orphan*/  lock_ps; int /*<<< orphan*/  reg_ps_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ltr501_ps_samp_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ltr501_data *data,
				     int val, int val2)
{
	int i, ret;

	i = FUNC1(ltr501_ps_samp_table,
				   FUNC0(ltr501_ps_samp_table),
				   val, val2);

	if (i < 0)
		return i;

	FUNC2(&data->lock_ps);
	ret = FUNC4(data->reg_ps_rate, i);
	FUNC3(&data->lock_ps);

	return ret;
}