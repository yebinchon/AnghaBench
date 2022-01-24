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
typedef  int /*<<< orphan*/  u8 ;
struct pca9532_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * psc; int /*<<< orphan*/ * pwm; TYPE_1__* chip_info; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_leds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct pca9532_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, int pwm)
{
	struct pca9532_data *data = FUNC2(client);
	u8 maxleds = data->chip_info->num_leds;

	FUNC4(&data->update_lock);
	FUNC3(client, FUNC1(maxleds, pwm),
		data->pwm[pwm]);
	FUNC3(client, FUNC0(maxleds, pwm),
		data->psc[pwm]);
	FUNC5(&data->update_lock);
	return 0;
}