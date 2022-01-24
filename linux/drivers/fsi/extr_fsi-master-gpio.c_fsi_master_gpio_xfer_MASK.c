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
typedef  int /*<<< orphan*/  uint8_t ;
struct fsi_master_gpio {int /*<<< orphan*/  dev; } ;
struct fsi_gpio_msg {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FSI_CRC_ERR_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct fsi_master_gpio*,int /*<<< orphan*/ ,size_t,void*) ; 
 int FUNC3 (struct fsi_master_gpio*,struct fsi_gpio_msg*) ; 

__attribute__((used)) static int FUNC4(struct fsi_master_gpio *master, uint8_t slave,
		struct fsi_gpio_msg *cmd, size_t resp_len, void *resp)
{
	int rc = -EAGAIN, retries = 0;

	while ((retries++) < FSI_CRC_ERR_RETRIES) {
		rc = FUNC3(master, cmd);
		if (rc)
			break;
		rc = FUNC2(master, slave, resp_len, resp);
		if (rc != -EAGAIN)
			break;
		rc = -EIO;
		FUNC0(master->dev, "ECRC retry %d\n", retries);

		/* Pace it a bit before retry */
		FUNC1(1);
	}

	return rc;
}