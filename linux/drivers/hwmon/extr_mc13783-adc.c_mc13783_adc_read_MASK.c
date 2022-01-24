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
struct sensor_device_attribute {unsigned int index; } ;
struct mc13783_adc_priv {int /*<<< orphan*/  mc13xxx; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC13XXX_ADC_MODE_MULT_CHAN ; 
 struct mc13783_adc_priv* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
		struct device_attribute *devattr, unsigned int *val)
{
	struct mc13783_adc_priv *priv = FUNC0(dev);
	struct sensor_device_attribute *attr = FUNC2(devattr);
	unsigned int channel = attr->index;
	unsigned int sample[4];
	int ret;

	ret = FUNC1(priv->mc13xxx,
			MC13XXX_ADC_MODE_MULT_CHAN,
			channel, 0, 0, sample);
	if (ret)
		return ret;

	/* ADIN7 subchannels */
	if (channel >= 16)
		channel = 7;

	channel &= 0x7;

	*val = (sample[channel % 4] >> (channel > 3 ? 14 : 2)) & 0x3ff;

	return 0;
}