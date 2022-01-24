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
struct xilinx_spi_conf {void* done; void* prog_b; struct spi_device* spi; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct fpga_manager {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct fpga_manager* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct xilinx_spi_conf*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct xilinx_spi_conf* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,struct fpga_manager*) ; 
 int /*<<< orphan*/  xilinx_spi_ops ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct xilinx_spi_conf *conf;
	struct fpga_manager *mgr;

	conf = FUNC5(&spi->dev, sizeof(*conf), GFP_KERNEL);
	if (!conf)
		return -ENOMEM;

	conf->spi = spi;

	/* PROGRAM_B is active low */
	conf->prog_b = FUNC4(&spi->dev, "prog_b", GPIOD_OUT_LOW);
	if (FUNC0(conf->prog_b)) {
		FUNC2(&spi->dev, "Failed to get PROGRAM_B gpio: %ld\n",
			FUNC1(conf->prog_b));
		return FUNC1(conf->prog_b);
	}

	conf->done = FUNC4(&spi->dev, "done", GPIOD_IN);
	if (FUNC0(conf->done)) {
		FUNC2(&spi->dev, "Failed to get DONE gpio: %ld\n",
			FUNC1(conf->done));
		return FUNC1(conf->done);
	}

	mgr = FUNC3(&spi->dev,
				   "Xilinx Slave Serial FPGA Manager",
				   &xilinx_spi_ops, conf);
	if (!mgr)
		return -ENOMEM;

	FUNC7(spi, mgr);

	return FUNC6(mgr);
}