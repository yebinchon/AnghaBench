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
struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adc12138 {int /*<<< orphan*/  cclk; int /*<<< orphan*/  vref_p; int /*<<< orphan*/  vref_n; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct adc12138* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC6(spi);
	struct adc12138 *adc = FUNC3(indio_dev);

	FUNC2(indio_dev);
	FUNC4(indio_dev);
	if (!FUNC0(adc->vref_n))
		FUNC5(adc->vref_n);
	FUNC5(adc->vref_p);
	FUNC1(adc->cclk);

	return 0;
}