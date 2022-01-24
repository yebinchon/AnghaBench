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
struct ad5360_state {TYPE_1__* data; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int /*<<< orphan*/ * d8; int /*<<< orphan*/  d32; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct ad5360_state* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
	unsigned int cmd, unsigned int addr, unsigned int val,
	unsigned int shift)
{
	struct ad5360_state *st = FUNC3(indio_dev);

	val <<= shift;
	val |= FUNC1(cmd) | FUNC0(addr);
	st->data[0].d32 = FUNC2(val);

	return FUNC4(st->spi, &st->data[0].d8[1], 3);
}