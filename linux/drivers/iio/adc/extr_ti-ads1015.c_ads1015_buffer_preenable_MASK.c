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
struct iio_dev {int dummy; } ;
struct ads1015_data {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct ads1015_data*) ; 
 int FUNC1 (struct ads1015_data*,int) ; 
 struct ads1015_data* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct ads1015_data *data = FUNC2(indio_dev);

	/* Prevent from enabling both buffer and event at a time */
	if (FUNC0(data))
		return -EBUSY;

	return FUNC1(FUNC2(indio_dev), true);
}