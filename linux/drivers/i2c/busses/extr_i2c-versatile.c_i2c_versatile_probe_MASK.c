#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_4__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct TYPE_8__ {int /*<<< orphan*/  nr; TYPE_1__ dev; TYPE_2__* algo_data; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct TYPE_7__ {struct i2c_versatile* data; } ;
struct i2c_versatile {TYPE_3__ adap; TYPE_2__ algo; scalar_t__ base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ I2C_CONTROLS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int SCL ; 
 int SDA ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC2 (TYPE_4__*,struct resource*) ; 
 struct i2c_versatile* FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*) ; 
 TYPE_2__ i2c_versatile_algo ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct i2c_versatile*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dev)
{
	struct i2c_versatile *i2c;
	struct resource *r;
	int ret;

	i2c = FUNC3(&dev->dev, sizeof(struct i2c_versatile), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	r = FUNC5(dev, IORESOURCE_MEM, 0);
	i2c->base = FUNC2(&dev->dev, r);
	if (FUNC0(i2c->base))
		return FUNC1(i2c->base);

	FUNC8(SCL | SDA, i2c->base + I2C_CONTROLS);

	i2c->adap.owner = THIS_MODULE;
	FUNC7(i2c->adap.name, "Versatile I2C adapter", sizeof(i2c->adap.name));
	i2c->adap.algo_data = &i2c->algo;
	i2c->adap.dev.parent = &dev->dev;
	i2c->adap.dev.of_node = dev->dev.of_node;
	i2c->algo = i2c_versatile_algo;
	i2c->algo.data = i2c;

	i2c->adap.nr = dev->id;
	ret = FUNC4(&i2c->adap);
	if (ret < 0)
		return ret;

	FUNC6(dev, i2c);

	return 0;
}