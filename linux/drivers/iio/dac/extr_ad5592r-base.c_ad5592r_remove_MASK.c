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
struct device {int dummy; } ;
struct ad5592r_state {scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ad5592r_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct ad5592r_state*) ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ad5592r_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

int FUNC6(struct device *dev)
{
	struct iio_dev *iio_dev = FUNC2(dev);
	struct ad5592r_state *st = FUNC4(iio_dev);

	FUNC3(iio_dev);
	FUNC1(st);
	FUNC0(st);

	if (st->reg)
		FUNC5(st->reg);

	return 0;
}