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
struct g762_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  fan_cmd2; int /*<<< orphan*/  fan_cmd1; int /*<<< orphan*/  clk_freq; int /*<<< orphan*/  set_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct g762_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct g762_data*) ; 
 struct g762_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				struct device_attribute *da, char *buf)
{
	struct g762_data *data = FUNC5(dev);
	unsigned int rpm;

	if (FUNC3(data))
		return FUNC4(data);

	FUNC6(&data->update_lock);
	rpm = FUNC8(data->set_cnt, data->clk_freq,
			   FUNC2(data->fan_cmd1),
			   FUNC0(data->fan_cmd1),
			   FUNC1(data->fan_cmd2));
	FUNC7(&data->update_lock);

	return FUNC9(buf, "%u\n", rpm);
}