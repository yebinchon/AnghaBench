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
struct userspace_data {unsigned long user_frequency; int valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq {int /*<<< orphan*/  lock; struct userspace_data* data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,unsigned long*) ; 
 struct devfreq* FUNC3 (struct device*) ; 
 int FUNC4 (struct devfreq*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct devfreq *devfreq = FUNC3(dev);
	struct userspace_data *data;
	unsigned long wanted;
	int err = 0;

	FUNC0(&devfreq->lock);
	data = devfreq->data;

	FUNC2(buf, "%lu", &wanted);
	data->user_frequency = wanted;
	data->valid = true;
	err = FUNC4(devfreq);
	if (err == 0)
		err = count;
	FUNC1(&devfreq->lock);
	return err;
}