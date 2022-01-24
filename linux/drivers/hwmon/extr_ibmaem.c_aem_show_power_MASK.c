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
typedef  int u64 ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aem_data {int* energy; int /*<<< orphan*/  lock; int /*<<< orphan*/ * power_period; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int UJ_PER_MJ ; 
 struct aem_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned long long) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC9 (struct aem_data*,size_t) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			      struct device_attribute *devattr,
			      char *buf)
{
	struct sensor_device_attribute *attr = FUNC8(devattr);
	struct aem_data *data = FUNC0(dev);
	u64 before, after, delta, time;
	signed long leftover;

	FUNC4(&data->lock);
	FUNC9(data, attr->index);
	time = FUNC2();
	before = data->energy[attr->index];

	leftover = FUNC6(
			FUNC3(data->power_period[attr->index])
		   );
	if (leftover) {
		FUNC5(&data->lock);
		return 0;
	}

	FUNC9(data, attr->index);
	time = FUNC2() - time;
	after = data->energy[attr->index];
	FUNC5(&data->lock);

	delta = (after - before) * UJ_PER_MJ;

	return FUNC7(buf, "%llu\n",
		(unsigned long long)FUNC1(delta * NSEC_PER_SEC, time));
}