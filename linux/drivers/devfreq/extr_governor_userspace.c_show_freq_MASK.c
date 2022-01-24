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
struct userspace_data {int /*<<< orphan*/  user_frequency; scalar_t__ valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq {int /*<<< orphan*/  lock; struct userspace_data* data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,...) ; 
 struct devfreq* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct devfreq *devfreq = FUNC3(dev);
	struct userspace_data *data;
	int err = 0;

	FUNC0(&devfreq->lock);
	data = devfreq->data;

	if (data->valid)
		err = FUNC2(buf, "%lu\n", data->user_frequency);
	else
		err = FUNC2(buf, "undefined\n");
	FUNC1(&devfreq->lock);
	return err;
}