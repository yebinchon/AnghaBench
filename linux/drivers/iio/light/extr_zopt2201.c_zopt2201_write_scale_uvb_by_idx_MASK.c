#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zopt2201_data {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  gain; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* zopt2201_scale_als ; 
 int FUNC2 (struct zopt2201_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct zopt2201_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct zopt2201_data *data, int idx)
{
	int ret;

	FUNC0(&data->lock);
	ret = FUNC3(data, zopt2201_scale_als[idx].res);
	if (ret < 0)
		goto unlock;

	ret = FUNC2(data, zopt2201_scale_als[idx].gain);

unlock:
	FUNC1(&data->lock);
	return ret;
}