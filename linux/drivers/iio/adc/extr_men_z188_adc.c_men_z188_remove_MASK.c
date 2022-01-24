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
struct z188_adc {int /*<<< orphan*/  mem; int /*<<< orphan*/  base; } ;
struct mcb_device {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct z188_adc* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC3 (struct mcb_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mcb_device *dev)
{
	struct iio_dev *indio_dev  = FUNC3(dev);
	struct z188_adc *adc = FUNC1(indio_dev);

	FUNC0(indio_dev);
	FUNC2(adc->base);
	FUNC4(adc->mem);
}