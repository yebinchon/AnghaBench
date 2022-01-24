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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct devfreq {unsigned long previous_freq; TYPE_2__ dev; TYPE_1__* profile; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_cur_freq ) (int /*<<< orphan*/ ,unsigned long*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 struct devfreq* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			     char *buf)
{
	unsigned long freq;
	struct devfreq *devfreq = FUNC2(dev);

	if (devfreq->profile->get_cur_freq &&
		!devfreq->profile->get_cur_freq(devfreq->dev.parent, &freq))
		return FUNC0(buf, "%lu\n", freq);

	return FUNC0(buf, "%lu\n", devfreq->previous_freq);
}