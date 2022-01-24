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
struct fsi_msg {int dummy; } ;
struct fsi_master_acf {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FSI_RESP_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct fsi_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct fsi_master_acf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (struct fsi_master_acf*,struct fsi_msg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fsi_master_acf *master, uint8_t slave)
{
	struct fsi_msg cmd;
	uint8_t tag;
	int rc;

	FUNC0(&cmd, slave);

	rc = FUNC4(master, &cmd, 0);
	if (rc) {
		FUNC2(master->dev, "Error %d sending term\n", rc);
		return rc;
	}

	rc = FUNC3(master, 0, NULL, &tag);
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