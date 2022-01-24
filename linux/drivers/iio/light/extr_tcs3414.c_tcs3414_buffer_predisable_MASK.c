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
struct tcs3414_data {int /*<<< orphan*/  control; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCS3414_CONTROL ; 
 int /*<<< orphan*/  TCS3414_CONTROL_ADC_EN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcs3414_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct tcs3414_data *data = FUNC1(indio_dev);
	int ret;

	ret = FUNC2(indio_dev);
	if (ret < 0)
		return ret;

	data->control &= ~TCS3414_CONTROL_ADC_EN;
	return FUNC0(data->client, TCS3414_CONTROL,
		data->control);
}