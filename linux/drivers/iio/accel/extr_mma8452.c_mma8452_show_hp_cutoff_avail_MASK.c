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
struct mma8452_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct mma8452_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct mma8452_data*) ; 
 int FUNC4 (struct mma8452_data*) ; 
 int /*<<< orphan*/ ** mma8452_hp_filter_cutoff ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					    struct device_attribute *attr,
					    char *buf)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct mma8452_data *data = FUNC2(indio_dev);
	int i, j;

	i = FUNC3(data);
	j = FUNC4(data);
	if (j < 0)
		return j;

	return FUNC5(buf, mma8452_hp_filter_cutoff[j][i],
		FUNC0(mma8452_hp_filter_cutoff[0][0]));
}