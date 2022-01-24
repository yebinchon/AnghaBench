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
struct ad7606_state {TYPE_1__* bops; } ;
struct TYPE_2__ {int (* write_mask ) (struct ad7606_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AD7616_CONFIGURATION_REGISTER ; 
 int /*<<< orphan*/  AD7616_OS_MASK ; 
 struct ad7606_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct ad7606_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev, int val)
{
	struct ad7606_state *st = FUNC0(indio_dev);

	return st->bops->write_mask(st, AD7616_CONFIGURATION_REGISTER,
				     AD7616_OS_MASK, val << 2);
}