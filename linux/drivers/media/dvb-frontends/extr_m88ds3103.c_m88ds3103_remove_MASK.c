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
struct m88ds3103_dev {int /*<<< orphan*/  muxc; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct m88ds3103_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct m88ds3103_dev*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct m88ds3103_dev *dev = FUNC1(client);

	FUNC0(&client->dev, "\n");

	FUNC2(dev->muxc);

	FUNC3(dev);
	return 0;
}