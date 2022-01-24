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
typedef  int u8 ;
struct fsi_master_acf {int /*<<< orphan*/  dev; scalar_t__ sram; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int FSI_RESP_ACK ; 
 scalar_t__ RSP_DATA ; 
 scalar_t__ STAT_RCRC ; 
 scalar_t__ STAT_RTAG ; 
 scalar_t__ FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_master_acf*,int,int,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct fsi_master_acf *master, uint8_t size,
			       uint32_t *response, u8 *tag)
{
	uint8_t rtag = FUNC3(master->sram + STAT_RTAG) & 0xf;
	uint8_t rcrc = FUNC3(master->sram + STAT_RCRC) & 0xf;
	uint32_t rdata = 0;
	uint32_t crc;
	uint8_t ack;

	*tag = ack = rtag & 3;

	/* we have a whole message now; check CRC */
	crc = FUNC0(0, 1, 1);
	crc = FUNC0(crc, rtag, 4);
	if (ack == FSI_RESP_ACK && size) {
		rdata = FUNC2(master->sram + RSP_DATA);
		crc = FUNC0(crc, rdata, size);
		if (response)
			*response = rdata;
	}
	crc = FUNC0(crc, rcrc, 4);

	FUNC4(master, rtag, rcrc, rdata, crc == 0);

	if (crc) {
		/*
		 * Check if it's all 1's or all 0's, that probably means
		 * the host is off
		 */
		if ((rtag == 0xf && rcrc == 0xf) || (rtag == 0 && rcrc == 0))
			return -ENODEV;
		FUNC1(master->dev, "Bad response CRC !\n");
		return -EAGAIN;
	}
	return 0;
}