#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm32_dac {TYPE_1__* common; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 struct stm32_dac* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
					unsigned reg, unsigned writeval,
					unsigned *readval)
{
	struct stm32_dac *dac = FUNC0(indio_dev);

	if (!readval)
		return FUNC2(dac->common->regmap, reg, writeval);
	else
		return FUNC1(dac->common->regmap, reg, readval);
}