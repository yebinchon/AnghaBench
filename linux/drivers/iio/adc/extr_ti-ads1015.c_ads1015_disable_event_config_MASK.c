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
struct iio_chan_spec {scalar_t__ address; } ;
struct ads1015_data {scalar_t__ event_channel; scalar_t__ comp_mode; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ADS1015_CFG_COMP_DISABLE ; 
 scalar_t__ ADS1015_CFG_COMP_MODE_TRAD ; 
 int ADS1015_CFG_COMP_MODE_WINDOW ; 
 int /*<<< orphan*/  ADS1015_CFG_COMP_QUE_MASK ; 
 int ADS1015_CFG_COMP_QUE_SHIFT ; 
 int /*<<< orphan*/  ADS1015_CFG_REG ; 
 int /*<<< orphan*/  FUNC0 (struct ads1015_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ads1015_data*) ; 
 int FUNC2 (struct ads1015_data*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ads1015_data *data,
	const struct iio_chan_spec *chan, int comp_mode)
{
	int ret;

	if (!FUNC1(data))
		return 0;

	if (data->event_channel != chan->address)
		return 0;

	if (data->comp_mode == ADS1015_CFG_COMP_MODE_TRAD &&
			comp_mode == ADS1015_CFG_COMP_MODE_WINDOW)
		return 0;

	ret = FUNC3(data->regmap, ADS1015_CFG_REG,
				ADS1015_CFG_COMP_QUE_MASK,
				ADS1015_CFG_COMP_DISABLE <<
					ADS1015_CFG_COMP_QUE_SHIFT);
	if (ret)
		return ret;

	FUNC0(data, chan->address);

	return FUNC2(data, false);
}