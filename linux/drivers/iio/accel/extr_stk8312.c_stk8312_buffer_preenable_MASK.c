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
struct stk8312_data {int mode; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int STK8312_MODE_ACTIVE ; 
 struct stk8312_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct stk8312_data*,int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	struct stk8312_data *data = FUNC0(indio_dev);

	return FUNC1(data, data->mode | STK8312_MODE_ACTIVE);
}