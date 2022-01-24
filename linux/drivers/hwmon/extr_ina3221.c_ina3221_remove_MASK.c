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
struct ina3221_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  pm_dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int INA3221_NUM_CHANNELS ; 
 struct ina3221_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct ina3221_data *ina = FUNC0(&client->dev);
	int i;

	FUNC2(ina->pm_dev);
	FUNC4(ina->pm_dev);

	/* pm_runtime_put_noidle() will decrease the PM refcount until 0 */
	for (i = 0; i < INA3221_NUM_CHANNELS; i++)
		FUNC3(ina->pm_dev);

	FUNC1(&ina->lock);

	return 0;
}