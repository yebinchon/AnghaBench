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
struct inv_mpu6050_state {int /*<<< orphan*/  lock; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct inv_mpu6050_state* FUNC0 (struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct iio_trigger*) ; 
 int FUNC2 (struct iio_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_trigger *trig,
					      bool state)
{
	struct iio_dev *indio_dev = FUNC1(trig);
	struct inv_mpu6050_state *st = FUNC0(indio_dev);
	int result;

	FUNC3(&st->lock);
	result = FUNC2(indio_dev, state);
	FUNC4(&st->lock);

	return result;
}