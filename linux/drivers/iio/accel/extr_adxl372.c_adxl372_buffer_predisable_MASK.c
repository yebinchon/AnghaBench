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
struct adxl372_state {int /*<<< orphan*/  fifo_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADXL372_FIFO_BYPASSED ; 
 int /*<<< orphan*/  FUNC0 (struct adxl372_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct adxl372_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adxl372_state* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	struct adxl372_state *st = FUNC2(indio_dev);

	FUNC1(st, 0, 0);
	st->fifo_mode = ADXL372_FIFO_BYPASSED;
	FUNC0(st);

	return FUNC3(indio_dev);
}