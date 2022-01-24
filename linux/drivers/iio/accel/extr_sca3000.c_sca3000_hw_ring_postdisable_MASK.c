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
struct sca3000_state {int* rx; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_INT_MASK_ADDR ; 
 int SCA3000_REG_INT_MASK_RING_HALF ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 struct sca3000_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	int ret;
	struct sca3000_state *st = FUNC1(indio_dev);

	ret = FUNC0(indio_dev, 0);
	if (ret)
		return ret;

	/* Disable the 50% full interrupt */
	FUNC2(&st->lock);

	ret = FUNC4(st, SCA3000_REG_INT_MASK_ADDR, 1);
	if (ret)
		goto unlock;
	ret = FUNC5(st,
				SCA3000_REG_INT_MASK_ADDR,
				st->rx[0] & ~SCA3000_REG_INT_MASK_RING_HALF);
unlock:
	FUNC3(&st->lock);
	return ret;
}