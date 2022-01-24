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
struct fpga_manager {int /*<<< orphan*/  dev; struct altera_ps_conf* priv; } ;
struct fpga_image_info {int dummy; } ;
struct altera_ps_conf {int /*<<< orphan*/  spi; scalar_t__ confd; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC4(struct fpga_manager *mgr,
				    struct fpga_image_info *info)
{
	struct altera_ps_conf *conf = mgr->priv;
	static const char dummy[] = {0};
	int ret;

	if (FUNC2(conf->status)) {
		FUNC0(&mgr->dev, "Error during configuration.\n");
		return -EIO;
	}

	if (conf->confd) {
		if (!FUNC1(conf->confd)) {
			FUNC0(&mgr->dev, "CONF_DONE is inactive!\n");
			return -EIO;
		}
	}

	/*
	 * After CONF_DONE goes high, send two additional falling edges on DCLK
	 * to begin initialization and enter user mode
	 */
	ret = FUNC3(conf->spi, dummy, 1);
	if (ret) {
		FUNC0(&mgr->dev, "spi error during end sequence: %d\n", ret);
		return ret;
	}

	return 0;
}