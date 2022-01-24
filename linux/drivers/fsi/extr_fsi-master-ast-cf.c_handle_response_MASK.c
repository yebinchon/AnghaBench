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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
struct fsi_msg {int dummy; } ;
struct fsi_master_acf {scalar_t__ trace_enabled; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FSI_CRC_ERR_RETRIES ; 
 int /*<<< orphan*/  FSI_MASTER_DPOLL_CLOCKS ; 
 int /*<<< orphan*/  FSI_MASTER_EPOLL_CLOCKS ; 
 int /*<<< orphan*/  FSI_MASTER_MAX_BUSY ; 
#define  FSI_RESP_ACK 131 
#define  FSI_RESP_BUSY 130 
#define  FSI_RESP_ERRA 129 
#define  FSI_RESP_ERRC 128 
 int /*<<< orphan*/  FUNC0 (struct fsi_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_msg*,int) ; 
 int FUNC2 (struct fsi_master_acf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fsi_master_acf*) ; 
 int FUNC8 (struct fsi_master_acf*,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC9 (struct fsi_master_acf*,struct fsi_msg*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct fsi_master_acf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fsi_master_acf*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct fsi_master_acf*,int) ; 

__attribute__((used)) static int FUNC13(struct fsi_master_acf *master,
			   uint8_t slave, uint8_t size, void *data)
{
	int busy_count = 0, rc;
	int crc_err_retries = 0;
	struct fsi_msg cmd;
	uint32_t response;
	uint8_t tag;
retry:
	rc = FUNC8(master, size, &response, &tag);

	/* Handle retries on CRC errors */
	if (rc == -EAGAIN) {
		/* Too many retries ? */
		if (crc_err_retries++ > FSI_CRC_ERR_RETRIES) {
			/*
			 * Pass it up as a -EIO otherwise upper level will retry
			 * the whole command which isn't what we want here.
			 */
			rc = -EIO;
			goto bail;
		}
		FUNC11(master, crc_err_retries);
		if (master->trace_enabled)
			FUNC7(master);
		rc = FUNC2(master, FSI_MASTER_EPOLL_CLOCKS);
		if (rc) {
			FUNC6(master->dev,
				 "Error %d clocking zeros for E_POLL\n", rc);
			return rc;
		}
		FUNC1(&cmd, slave);
		rc = FUNC9(master, &cmd, size);
		if (rc) {
			FUNC6(master->dev, "Error %d sending E_POLL\n", rc);
			return -EIO;
		}
		goto retry;
	}
	if (rc)
		return rc;

	switch (tag) {
	case FSI_RESP_ACK:
		if (size && data) {
			if (size == 32)
				*(__be32 *)data = FUNC4(response);
			else if (size == 16)
				*(__be16 *)data = FUNC3(response);
			else
				*(u8 *)data = response;
		}
		break;
	case FSI_RESP_BUSY:
		/*
		 * Its necessary to clock slave before issuing
		 * d-poll, not indicated in the hardware protocol
		 * spec. < 20 clocks causes slave to hang, 21 ok.
		 */
		FUNC5(master->dev, "Busy, retrying...\n");
		if (master->trace_enabled)
			FUNC7(master);
		rc = FUNC2(master, FSI_MASTER_DPOLL_CLOCKS);
		if (rc) {
			FUNC6(master->dev,
				 "Error %d clocking zeros for D_POLL\n", rc);
			break;
		}
		if (busy_count++ < FSI_MASTER_MAX_BUSY) {
			FUNC0(&cmd, slave);
			rc = FUNC9(master, &cmd, size);
			if (rc) {
				FUNC6(master->dev, "Error %d sending D_POLL\n", rc);
				break;
			}
			goto retry;
		}
		FUNC5(master->dev,
			"ERR slave is stuck in busy state, issuing TERM\n");
		FUNC10(master, slave);
		rc = -EIO;
		break;

	case FSI_RESP_ERRA:
		FUNC5(master->dev, "ERRA received\n");
		if (master->trace_enabled)
			FUNC7(master);
		rc = -EIO;
		break;
	case FSI_RESP_ERRC:
		FUNC5(master->dev, "ERRC received\n");
		if (master->trace_enabled)
			FUNC7(master);
		rc = -EAGAIN;
		break;
	}
 bail:
	if (busy_count > 0) {
		FUNC12(master, busy_count);
	}

	return rc;
}