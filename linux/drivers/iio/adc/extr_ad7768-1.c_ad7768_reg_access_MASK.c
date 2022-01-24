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
struct ad7768_state {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct ad7768_state*,unsigned int,int) ; 
 int FUNC1 (struct ad7768_state*,unsigned int,unsigned int) ; 
 struct ad7768_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			     unsigned int reg,
			     unsigned int writeval,
			     unsigned int *readval)
{
	struct ad7768_state *st = FUNC2(indio_dev);
	int ret;

	FUNC3(&st->lock);
	if (readval) {
		ret = FUNC0(st, reg, 1);
		if (ret < 0)
			goto err_unlock;
		*readval = ret;
		ret = 0;
	} else {
		ret = FUNC1(st, reg, writeval);
	}
err_unlock:
	FUNC4(&st->lock);

	return ret;
}