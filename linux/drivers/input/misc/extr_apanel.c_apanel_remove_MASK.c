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
struct apanel {int /*<<< orphan*/  ipdev; int /*<<< orphan*/  mail_led; } ;

/* Variables and functions */
 size_t APANEL_DEV_LED ; 
 scalar_t__ CHIP_NONE ; 
 scalar_t__* device_chip ; 
 struct apanel* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct apanel *ap = FUNC0(client);

	if (device_chip[APANEL_DEV_LED] != CHIP_NONE)
		FUNC3(&ap->mail_led);

	FUNC2(ap->ipdev);
	FUNC1(ap->ipdev);

	return 0;
}