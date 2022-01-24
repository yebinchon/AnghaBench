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
typedef  unsigned int u32 ;
struct iio_dev {int dummy; } ;
struct ads8688_state {TYPE_1__* data; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int /*<<< orphan*/ * d8; int /*<<< orphan*/  d32; } ;

/* Variables and functions */
 unsigned int ADS8688_PROG_DONT_CARE_BITS ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int ADS8688_PROG_WR_BIT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct ads8688_state* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev, unsigned int addr,
			      unsigned int val)
{
	struct ads8688_state *st = FUNC2(indio_dev);
	u32 tmp;

	tmp = FUNC0(addr) | ADS8688_PROG_WR_BIT | val;
	tmp <<= ADS8688_PROG_DONT_CARE_BITS;
	st->data[0].d32 = FUNC1(tmp);

	return FUNC3(st->spi, &st->data[0].d8[1], 3);
}