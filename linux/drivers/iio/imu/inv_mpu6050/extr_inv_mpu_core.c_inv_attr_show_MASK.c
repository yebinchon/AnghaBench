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
struct TYPE_2__ {int /*<<< orphan*/ * orientation; } ;
struct inv_mpu6050_state {TYPE_1__ plat_data; } ;
struct iio_dev_attr {int address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
#define  ATTR_ACCL_MATRIX 129 
#define  ATTR_GYRO_MATRIX 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct inv_mpu6050_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iio_dev_attr* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			     char *buf)
{
	struct inv_mpu6050_state *st = FUNC1(FUNC0(dev));
	struct iio_dev_attr *this_attr = FUNC3(attr);
	s8 *m;

	switch (this_attr->address) {
	/*
	 * In MPU6050, the two matrix are the same because gyro and accel
	 * are integrated in one chip
	 */
	case ATTR_GYRO_MATRIX:
	case ATTR_ACCL_MATRIX:
		m = st->plat_data.orientation;

		return FUNC2(buf, PAGE_SIZE,
			"%d, %d, %d; %d, %d, %d; %d, %d, %d\n",
			m[0], m[1], m[2], m[3], m[4], m[5], m[6], m[7], m[8]);
	default:
		return -EINVAL;
	}
}