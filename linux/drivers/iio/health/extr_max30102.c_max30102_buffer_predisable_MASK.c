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
struct max30102_data {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX30102_REG_MODE_CONFIG_MODE_NONE ; 
 struct max30102_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct max30102_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	struct max30102_data *data = FUNC0(indio_dev);

	return FUNC1(data, MAX30102_REG_MODE_CONFIG_MODE_NONE,
				      false);
}