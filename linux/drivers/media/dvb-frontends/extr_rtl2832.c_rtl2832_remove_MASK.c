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
struct rtl2832_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  muxc; int /*<<< orphan*/  i2c_gate_work; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct rtl2832_dev* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl2832_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct rtl2832_dev *dev = FUNC2(client);

	FUNC1(&client->dev, "\n");

	FUNC0(&dev->i2c_gate_work);

	FUNC3(dev->muxc);

	FUNC5(dev->regmap);

	FUNC4(dev);

	return 0;
}