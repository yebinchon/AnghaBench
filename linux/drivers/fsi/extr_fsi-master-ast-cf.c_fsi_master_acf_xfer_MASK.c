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
struct fsi_msg {int dummy; } ;
struct fsi_master_acf {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FSI_CRC_ERR_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct fsi_master_acf*,int /*<<< orphan*/ ,size_t,void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct fsi_master_acf*,struct fsi_msg*,size_t) ; 

__attribute__((used)) static int FUNC5(struct fsi_master_acf *master, uint8_t slave,
			       struct fsi_msg *cmd, size_t resp_len, void *resp)
{
	int rc = -EAGAIN, retries = 0;

	resp_len <<= 3;
	while ((retries++) < FSI_CRC_ERR_RETRIES) {
		rc = FUNC4(master, cmd, resp_len);
		if (rc) {
			if (rc != -ESHUTDOWN)
				FUNC1(master->dev, "Error %d sending command\n", rc);
			break;
		}
		rc = FUNC2(master, slave, resp_len, resp);
		if (rc != -EAGAIN)
			break;
		rc = -EIO;
		FUNC0(master->dev, "ECRC retry %d\n", retries);

		/* Pace it a bit before retry */
		FUNC3(1);
	}

	return rc;
}