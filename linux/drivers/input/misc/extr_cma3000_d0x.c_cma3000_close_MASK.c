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
struct input_dev {int dummy; } ;
struct cma3000_accl_data {int opened; int /*<<< orphan*/  mutex; int /*<<< orphan*/  suspended; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cma3000_accl_data*) ; 
 struct cma3000_accl_data* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct input_dev *input_dev)
{
	struct cma3000_accl_data *data = FUNC1(input_dev);

	FUNC2(&data->mutex);

	if (!data->suspended)
		FUNC0(data);

	data->opened = false;

	FUNC3(&data->mutex);
}