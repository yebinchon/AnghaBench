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
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int MMA8452_MAX_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct mma8452_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct mma8452_data*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				  unsigned int reg, unsigned int writeval,
				  unsigned int *readval)
{
	int ret;
	struct mma8452_data *data = FUNC1(indio_dev);

	if (reg > MMA8452_MAX_REG)
		return -EINVAL;

	if (!readval)
		return FUNC2(data, reg, writeval);

	ret = FUNC0(data->client, reg);
	if (ret < 0)
		return ret;

	*readval = ret;

	return 0;
}