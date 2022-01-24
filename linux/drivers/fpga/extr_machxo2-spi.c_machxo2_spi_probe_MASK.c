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
struct device {int dummy; } ;
struct spi_device {scalar_t__ max_speed_hz; struct device dev; } ;
struct fpga_manager {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ MACHXO2_MAX_SPEED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct fpga_manager* FUNC1 (struct device*,char*,int /*<<< orphan*/ *,struct spi_device*) ; 
 int FUNC2 (struct fpga_manager*) ; 
 int /*<<< orphan*/  machxo2_ops ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,struct fpga_manager*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct fpga_manager *mgr;

	if (spi->max_speed_hz > MACHXO2_MAX_SPEED) {
		FUNC0(dev, "Speed is too high\n");
		return -EINVAL;
	}

	mgr = FUNC1(dev, "Lattice MachXO2 SPI FPGA Manager",
				   &machxo2_ops, spi);
	if (!mgr)
		return -ENOMEM;

	FUNC3(spi, mgr);

	return FUNC2(mgr);
}