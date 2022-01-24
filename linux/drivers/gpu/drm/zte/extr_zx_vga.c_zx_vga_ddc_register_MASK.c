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
struct TYPE_2__ {struct device* parent; } ;
struct i2c_adapter {int /*<<< orphan*/  name; int /*<<< orphan*/ * algo; TYPE_1__ dev; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct zx_vga_i2c {struct i2c_adapter adap; int /*<<< orphan*/  lock; } ;
struct zx_vga {struct zx_vga_i2c* ddc; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct zx_vga_i2c* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,struct zx_vga*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  zx_vga_algorithm ; 

__attribute__((used)) static int FUNC6(struct zx_vga *vga)
{
	struct device *dev = vga->dev;
	struct i2c_adapter *adap;
	struct zx_vga_i2c *ddc;
	int ret;

	ddc = FUNC1(dev, sizeof(*ddc), GFP_KERNEL);
	if (!ddc)
		return -ENOMEM;

	vga->ddc = ddc;
	FUNC4(&ddc->lock);

	adap = &ddc->adap;
	adap->owner = THIS_MODULE;
	adap->class = I2C_CLASS_DDC;
	adap->dev.parent = dev;
	adap->algo = &zx_vga_algorithm;
	FUNC5(adap->name, sizeof(adap->name), "zx vga i2c");

	ret = FUNC2(adap);
	if (ret) {
		FUNC0(dev, "failed to add I2C adapter: %d\n", ret);
		return ret;
	}

	FUNC3(adap, vga);

	return 0;
}