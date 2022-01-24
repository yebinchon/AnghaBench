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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5758_state {int pwr_down; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD5758_DAC_CONFIG ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned long AD5758_DAC_CONFIG_INT_EN_MSK ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned long AD5758_DAC_CONFIG_OUT_EN_MSK ; 
 int FUNC2 (struct ad5758_state*,int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 struct ad5758_state* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct iio_dev *indio_dev,
				      uintptr_t priv,
				      struct iio_chan_spec const *chan,
				      const char *buf, size_t len)
{
	struct ad5758_state *st = FUNC3(indio_dev);
	bool pwr_down;
	unsigned int dac_config_mode, val;
	unsigned long int dac_config_msk;
	int ret;

	ret = FUNC4(buf, &pwr_down);
	if (ret)
		return ret;

	FUNC5(&st->lock);
	if (pwr_down)
		val = 0;
	else
		val = 1;

	dac_config_mode = FUNC1(val) |
			  FUNC0(val);
	dac_config_msk = AD5758_DAC_CONFIG_OUT_EN_MSK |
			 AD5758_DAC_CONFIG_INT_EN_MSK;

	ret = FUNC2(st, AD5758_DAC_CONFIG,
				    dac_config_msk,
				    dac_config_mode);
	if (ret < 0)
		goto err_unlock;

	st->pwr_down = pwr_down;

err_unlock:
	FUNC6(&st->lock);

	return ret ? ret : len;
}