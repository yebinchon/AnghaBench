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
struct i2c_smbus_alert {int /*<<< orphan*/  alert; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct i2c_smbus_alert* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct i2c_client *ara)
{
	struct i2c_smbus_alert *alert = FUNC0(ara);

	return FUNC1(&alert->alert);
}