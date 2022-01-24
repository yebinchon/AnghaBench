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
struct sca3000_state {int* rx; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_ACCEL ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_MAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_MOD_X ; 
 int /*<<< orphan*/  IIO_MOD_X_AND_Y_AND_Z ; 
 int /*<<< orphan*/  IIO_MOD_Y ; 
 int /*<<< orphan*/  IIO_MOD_Z ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SCA3000_INT_STATUS_FREE_FALL ; 
 int SCA3000_INT_STATUS_X_TRIGGER ; 
 int SCA3000_INT_STATUS_Y_TRIGGER ; 
 int SCA3000_INT_STATUS_Z_TRIGGER ; 
 int /*<<< orphan*/  SCA3000_REG_INT_STATUS_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct sca3000_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct iio_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct sca3000_state *st = FUNC2(indio_dev);
	int ret, val;
	s64 last_timestamp = FUNC1(indio_dev);

	/*
	 * Could lead if badly timed to an extra read of status reg,
	 * but ensures no interrupt is missed.
	 */
	FUNC4(&st->lock);
	ret = FUNC6(st, SCA3000_REG_INT_STATUS_ADDR, 1);
	val = st->rx[0];
	FUNC5(&st->lock);
	if (ret)
		goto done;

	FUNC7(val, indio_dev);

	if (val & SCA3000_INT_STATUS_FREE_FALL)
		FUNC3(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_X_AND_Y_AND_Z,
						  IIO_EV_TYPE_MAG,
						  IIO_EV_DIR_FALLING),
			       last_timestamp);

	if (val & SCA3000_INT_STATUS_Y_TRIGGER)
		FUNC3(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_Y,
						  IIO_EV_TYPE_MAG,
						  IIO_EV_DIR_RISING),
			       last_timestamp);

	if (val & SCA3000_INT_STATUS_X_TRIGGER)
		FUNC3(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_X,
						  IIO_EV_TYPE_MAG,
						  IIO_EV_DIR_RISING),
			       last_timestamp);

	if (val & SCA3000_INT_STATUS_Z_TRIGGER)
		FUNC3(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_Z,
						  IIO_EV_TYPE_MAG,
						  IIO_EV_DIR_RISING),
			       last_timestamp);

done:
	return IRQ_HANDLED;
}