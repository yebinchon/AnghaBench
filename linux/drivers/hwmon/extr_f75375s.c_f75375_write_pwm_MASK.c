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
struct f75375_data {scalar_t__ kind; int /*<<< orphan*/ * pwm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ f75387 ; 
 struct f75375_data* FUNC4 (struct i2c_client*) ; 

__attribute__((used)) static void FUNC5(struct i2c_client *client, int nr)
{
	struct f75375_data *data = FUNC4(client);
	if (data->kind == f75387)
		FUNC2(client, FUNC0(nr), data->pwm[nr]);
	else
		FUNC3(client, FUNC1(nr),
			      data->pwm[nr]);
}