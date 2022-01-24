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
struct i2c_client {int dummy; } ;
struct adt7470_data {int /*<<< orphan*/  auto_update_interval; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,struct adt7470_data*) ; 
 struct adt7470_data* FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *p)
{
	struct i2c_client *client = p;
	struct adt7470_data *data = FUNC1(client);

	while (!FUNC2()) {
		FUNC4(&data->lock);
		FUNC0(client, data);
		FUNC5(&data->lock);

		FUNC7(TASK_INTERRUPTIBLE);
		if (FUNC2())
			break;

		FUNC6(FUNC3(data->auto_update_interval));
	}

	return 0;
}