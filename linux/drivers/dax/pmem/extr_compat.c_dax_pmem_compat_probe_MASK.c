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
struct device {int dummy; } ;
struct dev_dax {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_DAX_CLASS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dev_dax*) ; 
 int FUNC1 (struct dev_dax*) ; 
 struct dev_dax* FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct dev_dax*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct dev_dax*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct dev_dax*) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct dev_dax *dev_dax = FUNC2(dev, DEV_DAX_CLASS);
	int rc;

	if (FUNC0(dev_dax))
		return FUNC1(dev_dax);

        if (!FUNC7(&dev_dax->dev, dev_dax, GFP_KERNEL))
		return -ENOMEM;

	FUNC4(&dev_dax->dev);
	rc = FUNC3(&dev_dax->dev);
	FUNC5(&dev_dax->dev);

	FUNC6(&dev_dax->dev, dev_dax);
	if (rc)
		FUNC8(&dev_dax->dev, dev_dax);

	return rc;
}