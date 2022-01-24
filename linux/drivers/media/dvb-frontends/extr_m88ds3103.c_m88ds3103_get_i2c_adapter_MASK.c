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
struct m88ds3103_dev {TYPE_1__* muxc; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {struct i2c_adapter** adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct m88ds3103_dev* FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static struct i2c_adapter *FUNC2(struct i2c_client *client)
{
	struct m88ds3103_dev *dev = FUNC1(client);

	FUNC0(&client->dev, "\n");

	return dev->muxc->adapter[0];
}