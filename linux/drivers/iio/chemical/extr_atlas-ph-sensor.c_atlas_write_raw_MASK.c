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
struct iio_chan_spec {scalar_t__ type; int /*<<< orphan*/  address; } ;
struct atlas_data {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 long IIO_CHAN_INFO_RAW ; 
 scalar_t__ IIO_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct atlas_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int val, int val2, long mask)
{
	struct atlas_data *data = FUNC1(indio_dev);
	__be32 reg = FUNC0(val / 10);

	if (val2 != 0 || val < 0 || val > 20000)
		return -EINVAL;

	if (mask != IIO_CHAN_INFO_RAW || chan->type != IIO_TEMP)
		return -EINVAL;

	return FUNC2(data->regmap, chan->address,
				 &reg, sizeof(reg));
}