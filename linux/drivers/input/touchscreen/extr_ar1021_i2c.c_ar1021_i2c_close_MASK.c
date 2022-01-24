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
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct ar1021_i2c {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ar1021_i2c* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev)
{
	struct ar1021_i2c *ar1021 = FUNC1(dev);
	struct i2c_client *client = ar1021->client;

	FUNC0(client->irq);
}