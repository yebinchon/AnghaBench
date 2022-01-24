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
typedef  int /*<<< orphan*/  u8 ;
struct spi_device {int dummy; } ;
struct ad714x_chip {int /*<<< orphan*/  dev; void** xfer_buf; } ;

/* Variables and functions */
 unsigned short AD714x_SPI_CMD_PREFIX ; 
 void* FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ *,int) ; 
 struct spi_device* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ad714x_chip *chip,
			    unsigned short reg, unsigned short data)
{
	struct spi_device *spi = FUNC3(chip->dev);
	int error;

	chip->xfer_buf[0] = FUNC0(AD714x_SPI_CMD_PREFIX | reg);
	chip->xfer_buf[1] = FUNC0(data);

	error = FUNC2(spi, (u8 *)chip->xfer_buf,
			  2 * sizeof(*chip->xfer_buf));
	if (FUNC4(error)) {
		FUNC1(chip->dev, "SPI write error: %d\n", error);
		return error;
	}

	return 0;
}