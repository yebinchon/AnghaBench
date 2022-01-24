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
struct mma8452_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct mma8452_data*) ; 
 int FUNC3 (struct mma8452_data*) ; 
 int /*<<< orphan*/ ** mma8452_hp_filter_cutoff ; 

__attribute__((used)) static int FUNC4(struct mma8452_data *data,
				       int val, int val2)
{
	int i, j;

	i = FUNC2(data);
	j = FUNC3(data);
	if (j < 0)
		return j;

	return FUNC1(mma8452_hp_filter_cutoff[j][i],
		FUNC0(mma8452_hp_filter_cutoff[0][0]), val, val2);
}