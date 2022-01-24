#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mxs_lradc_adc {TYPE_1__** scale_avail; } ;
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int integer; int nano; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct mxs_lradc_adc* FUNC2 (struct iio_dev*) ; 
 scalar_t__ FUNC3 (char*,char*,...) ; 
 struct iio_dev_attr* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
						 struct device_attribute *attr,
						 char *buf)
{
	struct iio_dev *iio = FUNC1(dev);
	struct mxs_lradc_adc *adc = FUNC2(iio);
	struct iio_dev_attr *iio_attr = FUNC4(attr);
	int i, ch, len = 0;

	ch = iio_attr->address;
	for (i = 0; i < FUNC0(adc->scale_avail[ch]); i++)
		len += FUNC3(buf + len, "%u.%09u ",
			       adc->scale_avail[ch][i].integer,
			       adc->scale_avail[ch][i].nano);

	len += FUNC3(buf + len, "\n");

	return len;
}