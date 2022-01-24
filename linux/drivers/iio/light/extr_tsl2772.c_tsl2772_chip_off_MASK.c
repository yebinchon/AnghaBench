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
struct tsl2772_chip {int /*<<< orphan*/  tsl2772_chip_status; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSL2772_CHIP_SUSPENDED ; 
 struct tsl2772_chip* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct tsl2772_chip*,int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	struct tsl2772_chip *chip = FUNC0(indio_dev);

	/* turn device off */
	chip->tsl2772_chip_status = TSL2772_CHIP_SUSPENDED;
	return FUNC1(chip, 0x00);
}