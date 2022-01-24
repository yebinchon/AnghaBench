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
struct lm95234_data {int interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 struct lm95234_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct lm95234_data*) ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct lm95234_data *data = FUNC1(dev);
	int ret = FUNC2(data);

	if (ret)
		return ret;

	return FUNC3(buf, "%lu\n",
		       FUNC0(data->interval * 1000, HZ));
}