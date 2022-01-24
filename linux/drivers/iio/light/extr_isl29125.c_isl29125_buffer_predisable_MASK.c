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
struct isl29125_data {int /*<<< orphan*/  conf1; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISL29125_CONF1 ; 
 int /*<<< orphan*/  ISL29125_MODE_MASK ; 
 int /*<<< orphan*/  ISL29125_MODE_PD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isl29125_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct isl29125_data *data = FUNC1(indio_dev);
	int ret;

	ret = FUNC2(indio_dev);
	if (ret < 0)
		return ret;

	data->conf1 &= ~ISL29125_MODE_MASK;
	data->conf1 |= ISL29125_MODE_PD;
	return FUNC0(data->client, ISL29125_CONF1,
		data->conf1);
}