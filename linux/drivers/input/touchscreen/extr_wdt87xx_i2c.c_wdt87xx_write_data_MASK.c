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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pkt_buf ;

/* Variables and functions */
 size_t CMD_DATA_OFFSET ; 
 size_t CMD_INDEX_OFFSET ; 
 size_t CMD_LENGTH_OFFSET ; 
 size_t CMD_REPORT_ID_OFFSET ; 
 size_t CMD_TYPE_OFFSET ; 
 int EINVAL ; 
 int /*<<< orphan*/  PACKET_SIZE ; 
 int PKT_BUF_SIZE ; 
 int /*<<< orphan*/  VND_REQ_WRITE ; 
 int /*<<< orphan*/  VND_SET_DATA ; 
 int /*<<< orphan*/  WDT_FLASH_WRITE_DELAY_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client, const char *data,
			      u32 address, int length)
{
	u16 packet_size;
	int count = 0;
	int error;
	u8 pkt_buf[PKT_BUF_SIZE];

	/* Address and length should be 4 bytes aligned */
	if ((address & 0x3) != 0 || (length & 0x3) != 0) {
		FUNC0(&client->dev,
			"addr & len must be 4 bytes aligned %x, %x\n",
			address, length);
		return -EINVAL;
	}

	while (length) {
		packet_size = FUNC3(length, PACKET_SIZE);

		pkt_buf[CMD_REPORT_ID_OFFSET] = VND_REQ_WRITE;
		pkt_buf[CMD_TYPE_OFFSET] = VND_SET_DATA;
		FUNC5(packet_size, &pkt_buf[CMD_INDEX_OFFSET]);
		FUNC6(address, &pkt_buf[CMD_LENGTH_OFFSET]);
		FUNC2(&pkt_buf[CMD_DATA_OFFSET], data, packet_size);

		error = FUNC7(client, pkt_buf, sizeof(pkt_buf));
		if (error)
			return error;

		length -= packet_size;
		data += packet_size;
		address += packet_size;

		/* Wait for the controller to finish the write */
		FUNC1(WDT_FLASH_WRITE_DELAY_MS);

		if ((++count % 32) == 0) {
			/* Delay for fw to clear watch dog */
			FUNC4(20);
		}
	}

	return 0;
}