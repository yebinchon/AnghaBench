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
struct sx9500_data {int /*<<< orphan*/  regmap; TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SX9500_CHAN_MASK ; 
 unsigned int SX9500_COMPSTAT_MASK ; 
 int /*<<< orphan*/  SX9500_REG_PROX_CTRL0 ; 
 int /*<<< orphan*/  SX9500_REG_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct sx9500_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct sx9500_data *data = FUNC1(indio_dev);
	int i, ret;
	unsigned int val;

	ret = FUNC3(data->regmap, SX9500_REG_PROX_CTRL0,
				 SX9500_CHAN_MASK, SX9500_CHAN_MASK);
	if (ret < 0)
		return ret;

	for (i = 10; i >= 0; i--) {
		FUNC4(10000, 20000);
		ret = FUNC2(data->regmap, SX9500_REG_STAT, &val);
		if (ret < 0)
			goto out;
		if (!(val & SX9500_COMPSTAT_MASK))
			break;
	}

	if (i < 0) {
		FUNC0(&data->client->dev, "initial compensation timed out");
		ret = -ETIMEDOUT;
	}

out:
	FUNC3(data->regmap, SX9500_REG_PROX_CTRL0,
			   SX9500_CHAN_MASK, 0);
	return ret;
}