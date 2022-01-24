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
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adxl372_state {int dummy; } ;

/* Variables and functions */
 unsigned long ADXL372_INT1_MAP_FIFO_FULL_MSK ; 
 int FUNC0 (struct adxl372_state*,unsigned long,int /*<<< orphan*/ ) ; 
 struct adxl372_state* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 

__attribute__((used)) static int FUNC3(struct iio_trigger *trig,
					 bool state)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct adxl372_state *st = FUNC1(indio_dev);
	unsigned long int mask = 0;

	if (state)
		mask = ADXL372_INT1_MAP_FIFO_FULL_MSK;

	return FUNC0(st, mask, 0);
}