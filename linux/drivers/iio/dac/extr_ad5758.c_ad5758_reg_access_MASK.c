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
struct ad5758_state {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct ad5758_state*,unsigned int) ; 
 int FUNC1 (struct ad5758_state*,unsigned int,unsigned int) ; 
 struct ad5758_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			     unsigned int reg,
			     unsigned int writeval,
			     unsigned int *readval)
{
	struct ad5758_state *st = FUNC2(indio_dev);
	int ret;

	FUNC3(&st->lock);
	if (readval) {
		ret = FUNC0(st, reg);
		if (ret < 0) {
			FUNC4(&st->lock);
			return ret;
		}

		*readval = ret;
		ret = 0;
	} else {
		ret = FUNC1(st, reg, writeval);
	}
	FUNC4(&st->lock);

	return ret;
}