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
struct sgp_data {scalar_t__ iaq_thread; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 struct sgp_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct sgp_data *data = FUNC1(indio_dev);

	if (data->iaq_thread)
		FUNC2(data->iaq_thread);

	return 0;
}