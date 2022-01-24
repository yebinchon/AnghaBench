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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct caam_drv_private_jr {int /*<<< orphan*/  list_node; int /*<<< orphan*/  tfm_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  jr_alloc_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct caam_drv_private_jr* FUNC3 (struct device*) ; 
 TYPE_1__ driver_data ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int ret;
	struct device *jrdev;
	struct caam_drv_private_jr *jrpriv;

	jrdev = &pdev->dev;
	jrpriv = FUNC3(jrdev);

	/*
	 * Return EBUSY if job ring already allocated.
	 */
	if (FUNC0(&jrpriv->tfm_count)) {
		FUNC2(jrdev, "Device is busy\n");
		return -EBUSY;
	}

	/* Unregister JR-based RNG & crypto algorithms */
	FUNC7();

	/* Remove the node from Physical JobR list maintained by driver */
	FUNC5(&driver_data.jr_alloc_lock);
	FUNC4(&jrpriv->list_node);
	FUNC6(&driver_data.jr_alloc_lock);

	/* Release ring */
	ret = FUNC1(jrdev);
	if (ret)
		FUNC2(jrdev, "Failed to shut down job ring\n");

	return ret;
}