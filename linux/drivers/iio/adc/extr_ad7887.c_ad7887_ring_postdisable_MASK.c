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
struct ad7887_state {int /*<<< orphan*/ * msg; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 size_t AD7887_CH0 ; 
 struct ad7887_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	struct ad7887_state *st = FUNC0(indio_dev);

	/* dummy read: restore default CH0 settin */
	return FUNC1(st->spi, &st->msg[AD7887_CH0]);
}