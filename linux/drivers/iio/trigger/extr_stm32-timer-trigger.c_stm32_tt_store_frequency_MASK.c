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
struct stm32_timer_trigger {int dummy; } ;
struct iio_trigger {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct stm32_timer_trigger* FUNC0 (struct iio_trigger*) ; 
 int FUNC1 (char const*,int,unsigned int*) ; 
 int FUNC2 (struct stm32_timer_trigger*,struct iio_trigger*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_timer_trigger*) ; 
 struct iio_trigger* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t len)
{
	struct iio_trigger *trig = FUNC4(dev);
	struct stm32_timer_trigger *priv = FUNC0(trig);
	unsigned int freq;
	int ret;

	ret = FUNC1(buf, 10, &freq);
	if (ret)
		return ret;

	if (freq == 0) {
		FUNC3(priv);
	} else {
		ret = FUNC2(priv, trig, freq);
		if (ret)
			return ret;
	}

	return len;
}