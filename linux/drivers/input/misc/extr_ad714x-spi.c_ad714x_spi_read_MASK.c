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
typedef  int /*<<< orphan*/  xfer ;
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct ad714x_chip {int /*<<< orphan*/ * xfer_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned short AD714x_SPI_CMD_PREFIX ; 
 unsigned short AD714x_SPI_READ ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (struct spi_device*,struct spi_message*) ; 
 struct spi_device* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ad714x_chip *chip,
			   unsigned short reg, unsigned short *data, size_t len)
{
	struct spi_device *spi = FUNC7(chip->dev);
	struct spi_message message;
	struct spi_transfer xfer[2];
	int i;
	int error;

	FUNC5(&message);
	FUNC3(xfer, 0, sizeof(xfer));

	chip->xfer_buf[0] = FUNC1(AD714x_SPI_CMD_PREFIX |
					AD714x_SPI_READ | reg);
	xfer[0].tx_buf = &chip->xfer_buf[0];
	xfer[0].len = sizeof(chip->xfer_buf[0]);
	FUNC4(&xfer[0], &message);

	xfer[1].rx_buf = &chip->xfer_buf[1];
	xfer[1].len = sizeof(chip->xfer_buf[1]) * len;
	FUNC4(&xfer[1], &message);

	error = FUNC6(spi, &message);
	if (FUNC8(error)) {
		FUNC2(chip->dev, "SPI read error: %d\n", error);
		return error;
	}

	for (i = 0; i < len; i++)
		data[i] = FUNC0(chip->xfer_buf[i + 1]);

	return 0;
}