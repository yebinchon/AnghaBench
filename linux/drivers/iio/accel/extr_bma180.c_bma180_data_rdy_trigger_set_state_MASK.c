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
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct bma180_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bma180_data*,int) ; 
 struct bma180_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 

__attribute__((used)) static int FUNC3(struct iio_trigger *trig,
		bool state)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct bma180_data *data = FUNC1(indio_dev);

	return FUNC0(data, state);
}