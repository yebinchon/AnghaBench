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
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct ad5764_state {TYPE_1__* data; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int /*<<< orphan*/ * d8; int /*<<< orphan*/  d32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct ad5764_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev, unsigned int reg,
	unsigned int val)
{
	struct ad5764_state *st = FUNC1(indio_dev);
	int ret;

	FUNC2(&indio_dev->mlock);
	st->data[0].d32 = FUNC0((reg << 16) | val);

	ret = FUNC4(st->spi, &st->data[0].d8[1], 3);
	FUNC3(&indio_dev->mlock);

	return ret;
}