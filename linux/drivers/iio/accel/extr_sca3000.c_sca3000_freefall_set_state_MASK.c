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
struct sca3000_state {int* rx; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_MODE_ADDR ; 
 int SCA3000_REG_MODE_FREE_FALL_DETECT ; 
 struct sca3000_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev, int state)
{
	struct sca3000_state *st = FUNC0(indio_dev);
	int ret;

	/* read current value of mode register */
	ret = FUNC1(st, SCA3000_REG_MODE_ADDR, 1);
	if (ret)
		return ret;

	/* if off and should be on */
	if (state && !(st->rx[0] & SCA3000_REG_MODE_FREE_FALL_DETECT))
		return FUNC2(st, SCA3000_REG_MODE_ADDR,
					 st->rx[0] | SCA3000_REG_MODE_FREE_FALL_DETECT);
	/* if on and should be off */
	else if (!state && (st->rx[0] & SCA3000_REG_MODE_FREE_FALL_DETECT))
		return FUNC2(st, SCA3000_REG_MODE_ADDR,
					 st->rx[0] & ~SCA3000_REG_MODE_FREE_FALL_DETECT);
	else
		return 0;
}