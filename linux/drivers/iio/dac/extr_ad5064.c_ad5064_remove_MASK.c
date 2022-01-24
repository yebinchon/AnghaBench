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
struct ad5064_state {int /*<<< orphan*/  vref_reg; int /*<<< orphan*/  use_internal_vref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ad5064_state*) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ad5064_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct ad5064_state *st = FUNC3(indio_dev);

	FUNC2(indio_dev);

	if (!st->use_internal_vref)
		FUNC4(FUNC0(st), st->vref_reg);

	return 0;
}