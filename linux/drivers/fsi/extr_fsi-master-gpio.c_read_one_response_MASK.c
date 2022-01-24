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
typedef  scalar_t__ uint32_t ;
struct fsi_master_gpio {int /*<<< orphan*/  dev; } ;
struct fsi_gpio_msg {int bits; int msg; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int FSI_CRC_SIZE ; 
 int FSI_MASTER_MTOE_COUNT ; 
 int FSI_RESP_ACK ; 
 scalar_t__ FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_master_gpio*,struct fsi_gpio_msg*,int) ; 

__attribute__((used)) static int FUNC5(struct fsi_master_gpio *master,
		uint8_t data_size, struct fsi_gpio_msg *msgp, uint8_t *tagp)
{
	struct fsi_gpio_msg msg;
	unsigned long flags;
	uint32_t crc;
	uint8_t tag;
	int i;

	FUNC3(flags);

	/* wait for the start bit */
	for (i = 0; i < FSI_MASTER_MTOE_COUNT; i++) {
		msg.bits = 0;
		msg.msg = 0;
		FUNC4(master, &msg, 1);
		if (msg.msg)
			break;
	}
	if (i == FSI_MASTER_MTOE_COUNT) {
		FUNC1(master->dev,
			"Master time out waiting for response\n");
		FUNC2(flags);
		return -ETIMEDOUT;
	}

	msg.bits = 0;
	msg.msg = 0;

	/* Read slave ID & response tag */
	FUNC4(master, &msg, 4);

	tag = msg.msg & 0x3;

	/* If we have an ACK and we're expecting data, clock the data in too */
	if (tag == FSI_RESP_ACK && data_size)
		FUNC4(master, &msg, data_size * 8);

	/* read CRC */
	FUNC4(master, &msg, FSI_CRC_SIZE);

	FUNC2(flags);

	/* we have a whole message now; check CRC */
	crc = FUNC0(0, 1, 1);
	crc = FUNC0(crc, msg.msg, msg.bits);
	if (crc) {
		/* Check if it's all 1's, that probably means the host is off */
		if (((~msg.msg) & ((1ull << msg.bits) - 1)) == 0)
			return -ENODEV;
		FUNC1(master->dev, "ERR response CRC msg: 0x%016llx (%d bits)\n",
			msg.msg, msg.bits);
		return -EAGAIN;
	}

	if (msgp)
		*msgp = msg;
	if (tagp)
		*tagp = tag;

	return 0;
}