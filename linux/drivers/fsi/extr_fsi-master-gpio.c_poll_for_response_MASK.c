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
typedef  int uint64_t ;
struct fsi_master_gpio {int /*<<< orphan*/  t_send_delay; int /*<<< orphan*/  dev; } ;
struct fsi_gpio_msg {int msg; } ;

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
 int /*<<< orphan*/  FUNC0 (struct fsi_gpio_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_gpio_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master_gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_master_gpio*) ; 
 int /*<<< orphan*/  FUNC6 (struct fsi_master_gpio*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int FUNC9 (struct fsi_master_gpio*,int,struct fsi_gpio_msg*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct fsi_master_gpio*,struct fsi_gpio_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct fsi_master_gpio*) ; 
 int /*<<< orphan*/  FUNC12 (struct fsi_master_gpio*) ; 
 int /*<<< orphan*/  FUNC13 (struct fsi_master_gpio*,int) ; 

__attribute__((used)) static int FUNC14(struct fsi_master_gpio *master,
		uint8_t slave, uint8_t size, void *data)
{
	struct fsi_gpio_msg response, cmd;
	int busy_count = 0, rc, i;
	unsigned long flags;
	uint8_t tag;
	uint8_t *data_byte = data;
	int crc_err_retries = 0;
retry:
	rc = FUNC9(master, size, &response, &tag);

	/* Handle retries on CRC errors */
	if (rc == -EAGAIN) {
		/* Too many retries ? */
		if (crc_err_retries++ > FSI_CRC_ERR_RETRIES) {
			/*
			 * Pass it up as a -EIO otherwise upper level will retry
			 * the whole command which isn't what we want here.
			 */
			rc = -EIO;
			goto fail;
		}
		FUNC3(master->dev,
			 "CRC error retry %d\n", crc_err_retries);
		FUNC12(master);
		FUNC1(&cmd, slave);
		FUNC8(flags);
		FUNC2(master, FSI_MASTER_EPOLL_CLOCKS);
		FUNC10(master, &cmd);
		FUNC5(master);
		FUNC7(flags);
		goto retry;
	} else if (rc)
		goto fail;

	switch (tag) {
	case FSI_RESP_ACK:
		if (size && data) {
			uint64_t val = response.msg;
			/* clear crc & mask */
			val >>= 4;
			val &= (1ull << (size * 8)) - 1;

			for (i = 0; i < size; i++) {
				data_byte[size-i-1] = val;
				val >>= 8;
			}
		}
		break;
	case FSI_RESP_BUSY:
		/*
		 * Its necessary to clock slave before issuing
		 * d-poll, not indicated in the hardware protocol
		 * spec. < 20 clocks causes slave to hang, 21 ok.
		 */
		if (busy_count++ < FSI_MASTER_MAX_BUSY) {
			FUNC0(&cmd, slave);
			FUNC8(flags);
			FUNC2(master, FSI_MASTER_DPOLL_CLOCKS);
			FUNC10(master, &cmd);
			FUNC5(master);
			FUNC7(flags);
			goto retry;
		}
		FUNC4(master->dev,
			"ERR slave is stuck in busy state, issuing TERM\n");
		FUNC8(flags);
		FUNC2(master, FSI_MASTER_DPOLL_CLOCKS);
		FUNC7(flags);
		FUNC6(master, slave);
		rc = -EIO;
		break;

	case FSI_RESP_ERRA:
		FUNC3(master->dev, "ERRA received: 0x%x\n", (int)response.msg);
		rc = -EIO;
		break;
	case FSI_RESP_ERRC:
		FUNC3(master->dev, "ERRC received: 0x%x\n", (int)response.msg);
		FUNC11(master);
		rc = -EAGAIN;
		break;
	}

	if (busy_count > 0)
		FUNC13(master, busy_count);
 fail:
	/*
	 * tSendDelay clocks, avoids signal reflections when switching
	 * from receive of response back to send of data.
	 */
	FUNC8(flags);
	FUNC2(master, master->t_send_delay);
	FUNC7(flags);

	return rc;
}