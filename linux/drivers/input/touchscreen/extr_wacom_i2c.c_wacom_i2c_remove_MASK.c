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
struct wacom_i2c {int /*<<< orphan*/  input; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wacom_i2c*) ; 
 struct wacom_i2c* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wacom_i2c*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct wacom_i2c *wac_i2c = FUNC1(client);

	FUNC0(client->irq, wac_i2c);
	FUNC2(wac_i2c->input);
	FUNC3(wac_i2c);

	return 0;
}