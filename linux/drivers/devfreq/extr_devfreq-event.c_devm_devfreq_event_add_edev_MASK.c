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
struct devfreq_event_dev {int dummy; } ;
struct devfreq_event_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct devfreq_event_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct devfreq_event_dev*) ; 
 struct devfreq_event_dev* FUNC2 (struct device*,struct devfreq_event_desc*) ; 
 int /*<<< orphan*/  devm_devfreq_event_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct devfreq_event_dev**) ; 
 struct devfreq_event_dev** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct devfreq_event_dev**) ; 

struct devfreq_event_dev *FUNC6(struct device *dev,
						struct devfreq_event_desc *desc)
{
	struct devfreq_event_dev **ptr, *edev;

	ptr = FUNC4(devm_devfreq_event_release, sizeof(*ptr),
				GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	edev = FUNC2(dev, desc);
	if (FUNC1(edev)) {
		FUNC5(ptr);
		return FUNC0(-ENOMEM);
	}

	*ptr = edev;
	FUNC3(dev, ptr);

	return edev;
}