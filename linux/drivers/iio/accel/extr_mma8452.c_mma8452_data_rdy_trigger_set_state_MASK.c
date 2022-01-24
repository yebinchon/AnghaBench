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
struct mma8452_data {int /*<<< orphan*/  client; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMA8452_CTRL_REG4 ; 
 int MMA8452_INT_DRDY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mma8452_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int FUNC3 (struct mma8452_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_trigger *trig,
					      bool state)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct mma8452_data *data = FUNC1(indio_dev);
	int reg, ret;

	ret = FUNC4(data->client, state);
	if (ret)
		return ret;

	reg = FUNC0(data->client, MMA8452_CTRL_REG4);
	if (reg < 0)
		return reg;

	if (state)
		reg |= MMA8452_INT_DRDY;
	else
		reg &= ~MMA8452_INT_DRDY;

	return FUNC3(data, MMA8452_CTRL_REG4, reg);
}