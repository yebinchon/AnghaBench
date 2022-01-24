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
struct ad7606_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7606_OS_MODE ; 
 int FUNC0 (struct ad7606_state*,int /*<<< orphan*/ ,int) ; 
 struct ad7606_state* FUNC1 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev, int val)
{
	struct ad7606_state *st = FUNC1(indio_dev);

	return FUNC0(st, AD7606_OS_MODE, val);
}