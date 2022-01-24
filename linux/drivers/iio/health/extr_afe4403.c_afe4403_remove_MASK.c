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
struct afe4403_data {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  regulator; int /*<<< orphan*/  trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct afe4403_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC6(spi);
	struct afe4403_data *afe = FUNC2(indio_dev);
	int ret;

	FUNC1(indio_dev);

	FUNC4(indio_dev);

	if (afe->irq > 0)
		FUNC3(afe->trig);

	ret = FUNC5(afe->regulator);
	if (ret) {
		FUNC0(afe->dev, "Unable to disable regulator\n");
		return ret;
	}

	return 0;
}