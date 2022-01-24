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
struct iio_dev {int dummy; } ;
struct ad7606_state {int /*<<< orphan*/  lock; TYPE_1__* bops; } ;
struct TYPE_2__ {int (* reg_read ) (struct ad7606_state*,unsigned int) ;int (* reg_write ) (struct ad7606_state*,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 struct ad7606_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ad7606_state*,unsigned int) ; 
 int FUNC4 (struct ad7606_state*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			     unsigned int reg,
			     unsigned int writeval,
			     unsigned int *readval)
{
	struct ad7606_state *st = FUNC0(indio_dev);
	int ret;

	FUNC1(&st->lock);
	if (readval) {
		ret = st->bops->reg_read(st, reg);
		if (ret < 0)
			goto err_unlock;
		*readval = ret;
		ret = 0;
	} else {
		ret = st->bops->reg_write(st, reg, writeval);
	}
err_unlock:
	FUNC2(&st->lock);
	return ret;
}