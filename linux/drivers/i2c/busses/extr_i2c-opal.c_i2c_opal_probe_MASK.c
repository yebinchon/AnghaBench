#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * quirks; void* algo_data; int /*<<< orphan*/ * algo; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 struct i2c_adapter* FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_opal_algo ; 
 int /*<<< orphan*/  i2c_opal_quirks ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct i2c_adapter	*adapter;
	const char		*pname;
	u32			opal_id;
	int			rc;

	if (!pdev->dev.of_node)
		return -ENODEV;

	rc = FUNC5(pdev->dev.of_node, "ibm,opal-id", &opal_id);
	if (rc) {
		FUNC0(&pdev->dev, "Missing ibm,opal-id property !\n");
		return -EIO;
	}

	adapter = FUNC1(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
	if (!adapter)
		return -ENOMEM;

	adapter->algo = &i2c_opal_algo;
	adapter->algo_data = (void *)(unsigned long)opal_id;
	adapter->quirks = &i2c_opal_quirks;
	adapter->dev.parent = &pdev->dev;
	adapter->dev.of_node = FUNC4(pdev->dev.of_node);
	pname = FUNC3(pdev->dev.of_node, "ibm,port-name", NULL);
	if (pname)
		FUNC7(adapter->name, pname, sizeof(adapter->name));
	else
		FUNC7(adapter->name, "opal", sizeof(adapter->name));

	FUNC6(pdev, adapter);
	rc = FUNC2(adapter);
	if (rc)
		FUNC0(&pdev->dev, "Failed to register the i2c adapter\n");

	return rc;
}