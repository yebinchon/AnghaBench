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
struct resource {int start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {int /*<<< orphan*/  nr; TYPE_1__ dev; int /*<<< orphan*/  class; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*) ; 
 struct i2c_adapter* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct i2c_adapter*) ; 
 int /*<<< orphan*/  puv3_i2c_algorithm ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct i2c_adapter *adapter;
	struct resource *mem;
	int rc;

	mem = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (!mem)
		return -ENODEV;

	if (!FUNC8(mem->start, FUNC9(mem), "puv3_i2c"))
		return -EBUSY;

	adapter = FUNC4(sizeof(struct i2c_adapter), GFP_KERNEL);
	if (adapter == NULL) {
		FUNC0(&pdev->dev, "can't allocate interface!\n");
		rc = -ENOMEM;
		goto fail_nomem;
	}
	FUNC10(adapter->name, sizeof(adapter->name), "PUV3-I2C at 0x%08x",
			mem->start);
	adapter->algo = &puv3_i2c_algorithm;
	adapter->class = I2C_CLASS_HWMON;
	adapter->dev.parent = &pdev->dev;

	FUNC6(pdev, adapter);

	adapter->nr = pdev->id;
	rc = FUNC2(adapter);
	if (rc)
		goto fail_add_adapter;

	FUNC1(&pdev->dev, "PKUnity v3 i2c bus adapter.\n");
	return 0;

fail_add_adapter:
	FUNC3(adapter);
fail_nomem:
	FUNC7(mem->start, FUNC9(mem));

	return rc;
}