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
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD9523_EEPROM_CTRL1 ; 
 int /*<<< orphan*/  AD9523_EEPROM_CTRL1_EEPROM_WRITE_PROT_DIS ; 
 int /*<<< orphan*/  AD9523_EEPROM_CTRL2 ; 
 int /*<<< orphan*/  AD9523_EEPROM_CTRL2_REG2EEPROM ; 
 int AD9523_EEPROM_DATA_XFER_IN_PROGRESS ; 
 int /*<<< orphan*/  AD9523_EEPROM_DATA_XFER_STATUS ; 
 int /*<<< orphan*/  AD9523_EEPROM_ERROR_READBACK ; 
 int AD9523_EEPROM_ERROR_READBACK_FAIL ; 
 int EIO ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	int ret, tmp;

	ret = FUNC1(indio_dev, AD9523_EEPROM_CTRL1,
			   AD9523_EEPROM_CTRL1_EEPROM_WRITE_PROT_DIS);
	if (ret < 0)
		return ret;
	ret = FUNC1(indio_dev, AD9523_EEPROM_CTRL2,
			   AD9523_EEPROM_CTRL2_REG2EEPROM);
	if (ret < 0)
		return ret;

	tmp = 4;
	do {
		FUNC3(20);
		ret = FUNC0(indio_dev,
				  AD9523_EEPROM_DATA_XFER_STATUS);
		if (ret < 0)
			return ret;
	} while ((ret & AD9523_EEPROM_DATA_XFER_IN_PROGRESS) && tmp--);

	ret = FUNC1(indio_dev, AD9523_EEPROM_CTRL1, 0);
	if (ret < 0)
		return ret;

	ret = FUNC0(indio_dev, AD9523_EEPROM_ERROR_READBACK);
	if (ret < 0)
		return ret;

	if (ret & AD9523_EEPROM_ERROR_READBACK_FAIL) {
		FUNC2(&indio_dev->dev, "Verify EEPROM failed");
		ret = -EIO;
	}

	return ret;
}