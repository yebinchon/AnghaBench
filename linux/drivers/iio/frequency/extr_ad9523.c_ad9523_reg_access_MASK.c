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
struct ad9523_state {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int AD9523_R1B ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*,unsigned int) ; 
 int FUNC2 (struct iio_dev*,unsigned int,unsigned int) ; 
 struct ad9523_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			      unsigned int reg, unsigned int writeval,
			      unsigned int *readval)
{
	struct ad9523_state *st = FUNC3(indio_dev);
	int ret;

	FUNC4(&st->lock);
	if (readval == NULL) {
		ret = FUNC2(indio_dev, reg | AD9523_R1B, writeval);
		FUNC0(indio_dev);
	} else {
		ret = FUNC1(indio_dev, reg | AD9523_R1B);
		if (ret < 0)
			goto out_unlock;
		*readval = ret;
		ret = 0;
	}

out_unlock:
	FUNC5(&st->lock);

	return ret;
}