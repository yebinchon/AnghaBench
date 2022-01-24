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
struct surface3_ts_data {struct spi_device* spi; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 struct surface3_ts_data* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct surface3_ts_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,struct surface3_ts_data*) ; 
 int FUNC3 (struct spi_device*) ; 
 int FUNC4 (struct surface3_ts_data*) ; 
 int FUNC5 (struct surface3_ts_data*) ; 
 int FUNC6 (struct surface3_ts_data*) ; 
 int /*<<< orphan*/  surface3_spi_irq_handler ; 
 int /*<<< orphan*/  FUNC7 (struct surface3_ts_data*,int) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct surface3_ts_data *data;
	int error;

	/* Set up SPI*/
	spi->bits_per_word = 8;
	spi->mode = SPI_MODE_0;
	error = FUNC3(spi);
	if (error)
		return error;

	data = FUNC0(&spi->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->spi = spi;
	FUNC2(spi, data);

	error = FUNC6(data);
	if (error)
		return error;

	FUNC7(data, true);
	FUNC7(data, false);
	FUNC7(data, true);

	error = FUNC5(data);
	if (error)
		return error;

	error = FUNC4(data);
	if (error)
		return error;

	error = FUNC1(&spi->dev, spi->irq,
					  NULL, surface3_spi_irq_handler,
					  IRQF_ONESHOT,
					  "Surface3-irq", data);
	if (error)
		return error;

	return 0;
}