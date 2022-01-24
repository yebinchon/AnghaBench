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
struct extcon_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct extcon_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct extcon_dev*) ; 
 int /*<<< orphan*/  devm_extcon_dev_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct extcon_dev**) ; 
 struct extcon_dev** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct extcon_dev**) ; 
 struct extcon_dev* FUNC5 (unsigned int const*) ; 

struct extcon_dev *FUNC6(struct device *dev,
					const unsigned int *supported_cable)
{
	struct extcon_dev **ptr, *edev;

	ptr = FUNC3(devm_extcon_dev_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	edev = FUNC5(supported_cable);
	if (FUNC1(edev)) {
		FUNC4(ptr);
		return edev;
	}

	edev->dev.parent = dev;

	*ptr = edev;
	FUNC2(dev, ptr);

	return edev;
}