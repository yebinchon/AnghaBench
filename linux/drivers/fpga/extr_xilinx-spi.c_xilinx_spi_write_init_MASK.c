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
struct xilinx_spi_conf {int /*<<< orphan*/  done; int /*<<< orphan*/  prog_b; } ;
struct fpga_manager {int /*<<< orphan*/  dev; struct xilinx_spi_conf* priv; } ;
struct fpga_image_info {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FPGA_MGR_PARTIAL_RECONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (size_t const,size_t const) ; 

__attribute__((used)) static int FUNC5(struct fpga_manager *mgr,
				 struct fpga_image_info *info,
				 const char *buf, size_t count)
{
	struct xilinx_spi_conf *conf = mgr->priv;
	const size_t prog_latency_7500us = 7500;
	const size_t prog_pulse_1us = 1;

	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
		FUNC0(&mgr->dev, "Partial reconfiguration not supported.\n");
		return -EINVAL;
	}

	FUNC2(conf->prog_b, 1);

	FUNC3(prog_pulse_1us); /* min is 500 ns */

	FUNC2(conf->prog_b, 0);

	if (FUNC1(conf->done)) {
		FUNC0(&mgr->dev, "Unexpected DONE pin state...\n");
		return -EIO;
	}

	/* program latency */
	FUNC4(prog_latency_7500us, prog_latency_7500us + 100);
	return 0;
}