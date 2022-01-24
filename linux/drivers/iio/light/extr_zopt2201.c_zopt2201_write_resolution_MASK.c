#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zopt2201_data {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int us; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* zopt2201_resolution ; 
 int FUNC3 (struct zopt2201_data*,int) ; 

__attribute__((used)) static int FUNC4(struct zopt2201_data *data,
				     int val, int val2)
{
	int i, ret;

	if (val != 0)
		return -EINVAL;

	for (i = 0; i < FUNC0(zopt2201_resolution); i++)
		if (val2 == zopt2201_resolution[i].us) {
			FUNC1(&data->lock);
			ret = FUNC3(data, i);
			FUNC2(&data->lock);
			return ret;
		}

	return -EINVAL;
}