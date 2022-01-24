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
typedef  size_t u32 ;
struct stm32_timer_trigger {int /*<<< orphan*/  regmap; } ;
struct iio_trigger {int /*<<< orphan*/  name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TIM_CR2 ; 
 size_t TIM_CR2_MMS ; 
 size_t TIM_CR2_MMS2 ; 
 size_t TIM_CR2_MMS2_SHIFT ; 
 size_t TIM_CR2_MMS_SHIFT ; 
 struct stm32_timer_trigger* FUNC0 (struct device*) ; 
 char** master_mode_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct iio_trigger* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					 struct device_attribute *attr,
					 char *buf)
{
	struct stm32_timer_trigger *priv = FUNC0(dev);
	struct iio_trigger *trig = FUNC4(dev);
	u32 cr2;

	FUNC1(priv->regmap, TIM_CR2, &cr2);

	if (FUNC3(trig->name))
		cr2 = (cr2 & TIM_CR2_MMS2) >> TIM_CR2_MMS2_SHIFT;
	else
		cr2 = (cr2 & TIM_CR2_MMS) >> TIM_CR2_MMS_SHIFT;

	return FUNC2(buf, PAGE_SIZE, "%s\n", master_mode_table[cr2]);
}