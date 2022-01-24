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
struct mn88473_dev {int /*<<< orphan*/ * regmap; int /*<<< orphan*/ * client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct mn88473_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mn88473_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct mn88473_dev *dev = FUNC1(client);

	FUNC0(&client->dev, "\n");

	FUNC4(dev->regmap[2]);
	FUNC2(dev->client[2]);

	FUNC4(dev->regmap[1]);
	FUNC2(dev->client[1]);

	FUNC4(dev->regmap[0]);

	FUNC3(dev);

	return 0;
}