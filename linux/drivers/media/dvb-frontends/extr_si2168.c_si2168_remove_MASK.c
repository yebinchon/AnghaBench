#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * release; } ;
struct TYPE_4__ {int /*<<< orphan*/ * demodulator_priv; TYPE_1__ ops; } ;
struct si2168_dev {TYPE_2__ fe; int /*<<< orphan*/  muxc; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct si2168_dev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct si2168_dev*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct si2168_dev *dev = FUNC1(client);

	FUNC0(&client->dev, "\n");

	FUNC2(dev->muxc);

	dev->fe.ops.release = NULL;
	dev->fe.demodulator_priv = NULL;

	FUNC3(dev);

	return 0;
}