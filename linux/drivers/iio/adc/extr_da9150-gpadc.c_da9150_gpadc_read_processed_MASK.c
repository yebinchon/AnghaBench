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
struct da9150_gpadc {int dummy; } ;

/* Variables and functions */
#define  DA9150_GPADC_CHAN_GPIOA 134 
#define  DA9150_GPADC_CHAN_GPIOB 133 
#define  DA9150_GPADC_CHAN_GPIOC 132 
#define  DA9150_GPADC_CHAN_GPIOD 131 
#define  DA9150_GPADC_CHAN_IBUS 130 
#define  DA9150_GPADC_CHAN_VBUS 129 
#define  DA9150_GPADC_CHAN_VSYS 128 
 int IIO_VAL_INT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct da9150_gpadc*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct da9150_gpadc *gpadc, int channel,
				       int hw_chan, int *val)
{
	int raw_val;

	raw_val = FUNC2(gpadc, hw_chan);
	if (raw_val < 0)
		return raw_val;

	switch (channel) {
	case DA9150_GPADC_CHAN_GPIOA:
	case DA9150_GPADC_CHAN_GPIOB:
	case DA9150_GPADC_CHAN_GPIOC:
	case DA9150_GPADC_CHAN_GPIOD:
		*val = FUNC0(raw_val);
		break;
	case DA9150_GPADC_CHAN_IBUS:
		*val = FUNC1(raw_val);
		break;
	case DA9150_GPADC_CHAN_VBUS:
		*val = FUNC3(raw_val);
		break;
	case DA9150_GPADC_CHAN_VSYS:
		*val = FUNC4(raw_val);
		break;
	default:
		/* No processing for other channels so return raw value */
		*val = raw_val;
		break;
	}

	return IIO_VAL_INT;
}