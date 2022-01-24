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
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct ad5421_state {unsigned int ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5421_REG_CTRL ; 
 unsigned int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 struct ad5421_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, unsigned int set,
	unsigned int clr)
{
	struct ad5421_state *st = FUNC1(indio_dev);
	unsigned int ret;

	FUNC2(&indio_dev->mlock);

	st->ctrl &= ~clr;
	st->ctrl |= set;

	ret = FUNC0(indio_dev, AD5421_REG_CTRL, st->ctrl);

	FUNC3(&indio_dev->mlock);

	return ret;
}