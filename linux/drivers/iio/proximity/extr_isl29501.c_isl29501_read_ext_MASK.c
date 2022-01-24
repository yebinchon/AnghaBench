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
struct isl29501_private {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  int ssize_t ;
typedef  enum isl29501_register_name { ____Placeholder_isl29501_register_name } isl29501_register_name ;

/* Variables and functions */
 int EINVAL ; 
#define  REG_CALIB_PHASE_LIGHT_A 133 
#define  REG_CALIB_PHASE_LIGHT_B 132 
#define  REG_CALIB_PHASE_TEMP_A 131 
#define  REG_CALIB_PHASE_TEMP_B 130 
#define  REG_GAIN 129 
#define  REG_GAIN_BIAS 128 
 int REG_PHASE_EXP ; 
 struct isl29501_private* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct isl29501_private*,int,int*) ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct iio_dev *indio_dev,
				 uintptr_t private,
				 const struct iio_chan_spec *chan,
				 char *buf)
{
	struct isl29501_private *isl29501 = FUNC0(indio_dev);
	enum isl29501_register_name reg = private;
	int ret;
	u32 value, gain, coeff, exp;

	switch (reg) {
	case REG_GAIN:
	case REG_GAIN_BIAS:
		ret = FUNC1(isl29501, reg, &gain);
		if (ret < 0)
			return ret;

		value = gain;
		break;
	case REG_CALIB_PHASE_TEMP_A:
	case REG_CALIB_PHASE_TEMP_B:
	case REG_CALIB_PHASE_LIGHT_A:
	case REG_CALIB_PHASE_LIGHT_B:
		ret = FUNC1(isl29501, REG_PHASE_EXP, &exp);
		if (ret < 0)
			return ret;

		ret = FUNC1(isl29501, reg, &coeff);
		if (ret < 0)
			return ret;

		value = coeff << exp;
		break;
	default:
		return -EINVAL;
	}

	return FUNC2(buf, "%u\n", value);
}