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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_timer_trigger {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIM_SMCR ; 
 int /*<<< orphan*/  TIM_SMCR_SMS ; 
 struct stm32_timer_trigger* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				 const struct iio_chan_spec *chan)
{
	struct stm32_timer_trigger *priv = FUNC0(indio_dev);
	u32 smcr;

	FUNC1(priv->regmap, TIM_SMCR, &smcr);
	smcr &= TIM_SMCR_SMS;

	return FUNC2(smcr);
}