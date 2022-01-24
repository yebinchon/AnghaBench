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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devm_devfreq_event_match ; 
 int /*<<< orphan*/  devm_devfreq_event_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct devfreq_event_dev*) ; 

void FUNC2(struct device *dev,
				struct devfreq_event_dev *edev)
{
	FUNC0(FUNC1(dev, devm_devfreq_event_release,
			       devm_devfreq_event_match, edev));
}