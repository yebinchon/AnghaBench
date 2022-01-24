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
typedef  int u16 ;
struct iio_dev {int dummy; } ;
struct ad7291_chip_info {int command; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AD7291_ALERT_CLEAR ; 
 int /*<<< orphan*/  AD7291_COMMAND ; 
 int /*<<< orphan*/  AD7291_T_ALERT_STATUS ; 
 int AD7291_T_AVG_HIGH ; 
 int AD7291_T_AVG_LOW ; 
 int AD7291_T_HIGH ; 
 int AD7291_T_LOW ; 
 int /*<<< orphan*/  AD7291_VOLTAGE_ALERT_STATUS ; 
 int AD7291_VOLTAGE_LIMIT_COUNT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_TEMP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_VOLTAGE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC3 (struct ad7291_chip_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ad7291_chip_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 struct ad7291_chip_info* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct ad7291_chip_info *chip = FUNC6(private);
	u16 t_status, v_status;
	u16 command;
	int i;
	s64 timestamp = FUNC5(indio_dev);

	if (FUNC3(chip, AD7291_T_ALERT_STATUS, &t_status))
		return IRQ_HANDLED;

	if (FUNC3(chip, AD7291_VOLTAGE_ALERT_STATUS, &v_status))
		return IRQ_HANDLED;

	if (!(t_status || v_status))
		return IRQ_HANDLED;

	command = chip->command | AD7291_ALERT_CLEAR;
	FUNC4(chip, AD7291_COMMAND, command);

	command = chip->command & ~AD7291_ALERT_CLEAR;
	FUNC4(chip, AD7291_COMMAND, command);

	/* For now treat t_sense and t_sense_average the same */
	if ((t_status & AD7291_T_LOW) || (t_status & AD7291_T_AVG_LOW))
		FUNC7(indio_dev,
			       FUNC2(IIO_TEMP,
						    0,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_FALLING),
			       timestamp);
	if ((t_status & AD7291_T_HIGH) || (t_status & AD7291_T_AVG_HIGH))
		FUNC7(indio_dev,
			       FUNC2(IIO_TEMP,
						    0,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_RISING),
			       timestamp);

	for (i = 0; i < AD7291_VOLTAGE_LIMIT_COUNT; i++) {
		if (v_status & FUNC1(i))
			FUNC7(indio_dev,
				       FUNC2(IIO_VOLTAGE,
							    i,
							    IIO_EV_TYPE_THRESH,
							    IIO_EV_DIR_FALLING),
				       timestamp);
		if (v_status & FUNC0(i))
			FUNC7(indio_dev,
				       FUNC2(IIO_VOLTAGE,
							    i,
							    IIO_EV_TYPE_THRESH,
							    IIO_EV_DIR_RISING),
				       timestamp);
	}

	return IRQ_HANDLED;
}