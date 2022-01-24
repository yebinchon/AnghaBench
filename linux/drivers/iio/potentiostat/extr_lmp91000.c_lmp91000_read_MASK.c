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
struct lmp91000_data {int chan_select; int* buffer; int /*<<< orphan*/  completion; int /*<<< orphan*/  trig; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  LMP91000_REG_MODECN ; 
 int LMP91000_REG_MODECN_3LEAD ; 
 int LMP91000_REG_MODECN_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct lmp91000_data *data, int channel, int *val)
{
	int state, ret;

	ret = FUNC1(data->regmap, LMP91000_REG_MODECN, &state);
	if (ret)
		return -EINVAL;

	ret = FUNC2(data->regmap, LMP91000_REG_MODECN, channel);
	if (ret)
		return -EINVAL;

	/* delay till first temperature reading is complete */
	if (state != channel && channel == LMP91000_REG_MODECN_TEMP)
		FUNC4(3000, 4000);

	data->chan_select = channel != LMP91000_REG_MODECN_3LEAD;

	FUNC0(data->trig);

	ret = FUNC5(&data->completion, HZ);
	FUNC3(&data->completion);

	if (!ret)
		return -ETIMEDOUT;

	*val = data->buffer[data->chan_select];

	return 0;
}