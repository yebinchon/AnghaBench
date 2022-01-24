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
typedef  scalar_t__ uint8_t ;
struct fsi_master_gpio {int /*<<< orphan*/  dev; } ;
struct fsi_gpio_msg {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FSI_RESP_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct fsi_gpio_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master_gpio*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (struct fsi_master_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct fsi_master_gpio*,struct fsi_gpio_msg*) ; 

__attribute__((used)) static int FUNC7(struct fsi_master_gpio *master, uint8_t slave)
{
	struct fsi_gpio_msg cmd;
	unsigned long flags;
	uint8_t tag;
	int rc;

	FUNC0(&cmd, slave);

	FUNC4(flags);
	FUNC6(master, &cmd);
	FUNC2(master);
	FUNC3(flags);

	rc = FUNC5(master, 0, NULL, &tag);
	if (rc < 0) {
		FUNC1(master->dev,
				"TERM failed; lost communication with slave\n");
		return -EIO;
	} else if (tag != FSI_RESP_ACK) {
		FUNC1(master->dev, "TERM failed; response %d\n", tag);
		return -EIO;
	}

	return 0;
}