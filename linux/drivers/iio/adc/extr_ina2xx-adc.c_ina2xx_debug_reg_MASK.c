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
struct ina2xx_chip_info {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct ina2xx_chip_info* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			    unsigned reg, unsigned writeval, unsigned *readval)
{
	struct ina2xx_chip_info *chip = FUNC0(indio_dev);

	if (!readval)
		return FUNC2(chip->regmap, reg, writeval);

	return FUNC1(chip->regmap, reg, readval);
}