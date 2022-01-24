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
struct max16065_data {scalar_t__ curr_sense; int /*<<< orphan*/  curr_gain; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct max16065_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *da, char *buf)
{
	struct max16065_data *data = FUNC1(dev);

	if (FUNC3(data->curr_sense < 0))
		return data->curr_sense;

	return FUNC2(buf, PAGE_SIZE, "%d\n",
			FUNC0(data->curr_sense, data->curr_gain));
}