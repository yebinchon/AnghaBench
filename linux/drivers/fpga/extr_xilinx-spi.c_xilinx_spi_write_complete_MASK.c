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
struct xilinx_spi_conf {int /*<<< orphan*/  done; } ;
struct fpga_manager {int /*<<< orphan*/  dev; struct xilinx_spi_conf* priv; } ;
struct fpga_image_info {int /*<<< orphan*/  config_complete_timeout_us; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xilinx_spi_conf*) ; 

__attribute__((used)) static int FUNC5(struct fpga_manager *mgr,
				     struct fpga_image_info *info)
{
	struct xilinx_spi_conf *conf = mgr->priv;
	unsigned long timeout;
	int ret;

	if (FUNC1(conf->done))
		return FUNC4(conf);

	timeout = jiffies + FUNC3(info->config_complete_timeout_us);

	while (FUNC2(jiffies, timeout)) {

		ret = FUNC4(conf);
		if (ret)
			return ret;

		if (FUNC1(conf->done))
			return FUNC4(conf);
	}

	FUNC0(&mgr->dev, "Timeout after config data transfer.\n");
	return -ETIMEDOUT;
}