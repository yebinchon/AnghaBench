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
struct g762_data {int valid; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  set_cnt; int /*<<< orphan*/  client; int /*<<< orphan*/  fan_cmd2; int /*<<< orphan*/  fan_cmd1; int /*<<< orphan*/  clk_freq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G762_REG_SET_CNT ; 
 scalar_t__ FUNC3 (struct g762_data*) ; 
 int FUNC4 (struct g762_data*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct g762_data* FUNC6 (struct device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct device *dev, unsigned long val)
{
	struct g762_data *data = FUNC6(dev);
	int ret;

	if (FUNC3(data))
		return FUNC4(data);

	FUNC8(&data->update_lock);
	data->set_cnt = FUNC5(val, data->clk_freq,
				     FUNC2(data->fan_cmd1),
				     FUNC0(data->fan_cmd1),
				     FUNC1(data->fan_cmd2));
	ret = FUNC7(data->client, G762_REG_SET_CNT,
					data->set_cnt);
	data->valid = false;
	FUNC9(&data->update_lock);

	return ret;
}