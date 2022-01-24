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
struct ad7606_state {scalar_t__ base_address; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 struct ad7606_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,void*,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				  int count, void *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct ad7606_state *st = FUNC1(indio_dev);

	FUNC2((unsigned long)st->base_address, buf, count * 2);

	return 0;
}