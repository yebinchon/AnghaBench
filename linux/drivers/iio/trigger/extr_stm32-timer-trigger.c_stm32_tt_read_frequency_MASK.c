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
typedef  int u32 ;
struct stm32_timer_trigger {int /*<<< orphan*/  clk; int /*<<< orphan*/  regmap; } ;
struct iio_trigger {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  TIM_ARR ; 
 int /*<<< orphan*/  TIM_CR1 ; 
 int TIM_CR1_CEN ; 
 int /*<<< orphan*/  TIM_PSC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,int) ; 
 struct stm32_timer_trigger* FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 
 struct iio_trigger* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				       struct device_attribute *attr, char *buf)
{
	struct iio_trigger *trig = FUNC5(dev);
	struct stm32_timer_trigger *priv = FUNC2(trig);
	u32 psc, arr, cr1;
	unsigned long long freq = 0;

	FUNC3(priv->regmap, TIM_CR1, &cr1);
	FUNC3(priv->regmap, TIM_PSC, &psc);
	FUNC3(priv->regmap, TIM_ARR, &arr);

	if (cr1 & TIM_CR1_CEN) {
		freq = (unsigned long long)FUNC0(priv->clk);
		FUNC1(freq, psc + 1);
		FUNC1(freq, arr + 1);
	}

	return FUNC4(buf, "%d\n", (unsigned int)freq);
}