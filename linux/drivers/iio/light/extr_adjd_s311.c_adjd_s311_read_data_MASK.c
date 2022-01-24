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
typedef  int /*<<< orphan*/  u8 ;
struct iio_dev {int dummy; } ;
struct adjd_s311_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int ADJD_S311_DATA_MASK ; 
 int FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adjd_s311_data* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev, u8 reg, int *val)
{
	struct adjd_s311_data *data = FUNC2(indio_dev);

	int ret = FUNC0(indio_dev);
	if (ret < 0)
		return ret;

	ret = FUNC1(data->client, reg);
	if (ret < 0)
		return ret;

	*val = ret & ADJD_S311_DATA_MASK;

	return 0;
}