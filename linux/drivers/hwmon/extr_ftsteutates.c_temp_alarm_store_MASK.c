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
struct fts_data {int valid; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  long ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 long EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fts_data* FUNC1 (struct device*) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (struct fts_data*) ; 
 long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *devattr,
		 const char *buf, size_t count)
{
	struct fts_data *data = FUNC1(dev);
	int index = FUNC8(devattr)->index;
	long ret;

	ret = FUNC3(data);
	if (ret < 0)
		return ret;

	if (FUNC5(buf, 10, &ret) || ret != 0)
		return -EINVAL;

	FUNC6(&data->update_lock);
	ret = FUNC2(data->client, FUNC0(index));
	if (ret < 0)
		goto error;

	ret = FUNC4(data->client, FUNC0(index),
			     ret | 0x1);
	if (ret < 0)
		goto error;

	data->valid = false;
	ret = count;
error:
	FUNC7(&data->update_lock);
	return ret;
}