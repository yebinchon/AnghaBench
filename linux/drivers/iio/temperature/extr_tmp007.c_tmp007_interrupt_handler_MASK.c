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
struct tmp007_data {int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_MOD_TEMP_AMBIENT ; 
 int /*<<< orphan*/  IIO_MOD_TEMP_OBJECT ; 
 int /*<<< orphan*/  IIO_TEMP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  TMP007_STATUS ; 
 int TMP007_STATUS_LHF ; 
 int TMP007_STATUS_LLF ; 
 int TMP007_STATUS_OHF ; 
 int TMP007_STATUS_OLF ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct tmp007_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct tmp007_data *data = FUNC3(indio_dev);
	int ret;

	ret = FUNC1(data->client, TMP007_STATUS);
	if ((ret < 0) || !(ret & (TMP007_STATUS_OHF | TMP007_STATUS_OLF |
				TMP007_STATUS_LHF | TMP007_STATUS_LLF)))
		return IRQ_NONE;

	if (ret & TMP007_STATUS_OHF)
		FUNC4(indio_dev,
				FUNC0(IIO_TEMP, 0,
					IIO_MOD_TEMP_OBJECT,
					IIO_EV_TYPE_THRESH,
					IIO_EV_DIR_RISING),
				FUNC2(indio_dev));

	if (ret & TMP007_STATUS_OLF)
		FUNC4(indio_dev,
				FUNC0(IIO_TEMP, 0,
					IIO_MOD_TEMP_OBJECT,
					IIO_EV_TYPE_THRESH,
					IIO_EV_DIR_FALLING),
				FUNC2(indio_dev));

	if (ret & TMP007_STATUS_LHF)
		FUNC4(indio_dev,
				FUNC0(IIO_TEMP, 0,
					IIO_MOD_TEMP_AMBIENT,
					IIO_EV_TYPE_THRESH,
					IIO_EV_DIR_RISING),
				FUNC2(indio_dev));

	if (ret & TMP007_STATUS_LLF)
		FUNC4(indio_dev,
				FUNC0(IIO_TEMP, 0,
					IIO_MOD_TEMP_AMBIENT,
					IIO_EV_TYPE_THRESH,
					IIO_EV_DIR_FALLING),
				FUNC2(indio_dev));

	return IRQ_HANDLED;
}