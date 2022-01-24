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
struct stm32_timer_trigger {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  TIM_ARR ; 
 int /*<<< orphan*/  TIM_CR1 ; 
 int /*<<< orphan*/  TIM_CR1_ARPE ; 
 struct stm32_timer_trigger* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC4(struct iio_dev *indio_dev,
				      uintptr_t private,
				      const struct iio_chan_spec *chan,
				      const char *buf, size_t len)
{
	struct stm32_timer_trigger *priv = FUNC0(indio_dev);
	unsigned int preset;
	int ret;

	ret = FUNC1(buf, 0, &preset);
	if (ret)
		return ret;

	/* TIMx_ARR register shouldn't be buffered (ARPE=0) */
	FUNC2(priv->regmap, TIM_CR1, TIM_CR1_ARPE, 0);
	FUNC3(priv->regmap, TIM_ARR, preset);

	return len;
}