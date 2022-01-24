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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pkt_buf ;
typedef  int /*<<< orphan*/  cmd_buf ;

/* Variables and functions */
 int CMD_BUF_SIZE ; 
 size_t CMD_DATA_OFFSET ; 
 size_t CMD_REPORT_ID_OFFSET ; 
 size_t CMD_TYPE_OFFSET ; 
 int FUNC0 (int,int) ; 
 int PKT_BUF_SIZE ; 
 int /*<<< orphan*/  VND_GET_CHECKSUM ; 
 int /*<<< orphan*/  VND_READ_DATA ; 
 int /*<<< orphan*/  VND_REQ_READ ; 
 int /*<<< orphan*/  VND_SET_CHECKSUM_CALC ; 
 int /*<<< orphan*/  VND_SET_CHECKSUM_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client, u16 *checksum,
				u32 address, int length)
{
	int error;
	int time_delay;
	u8 pkt_buf[PKT_BUF_SIZE];
	u8 cmd_buf[CMD_BUF_SIZE];

	error = FUNC6(client, VND_SET_CHECKSUM_LENGTH, length);
	if (error) {
		FUNC1(&client->dev, "failed to set checksum length\n");
		return error;
	}

	error = FUNC6(client, VND_SET_CHECKSUM_CALC, address);
	if (error) {
		FUNC1(&client->dev, "failed to set checksum address\n");
		return error;
	}

	/* Wait the operation to complete */
	time_delay = FUNC0(length, 1024);
	FUNC4(time_delay * 30);

	FUNC3(cmd_buf, 0, sizeof(cmd_buf));
	cmd_buf[CMD_REPORT_ID_OFFSET] = VND_REQ_READ;
	cmd_buf[CMD_TYPE_OFFSET] = VND_GET_CHECKSUM;
	error = FUNC7(client, cmd_buf, sizeof(cmd_buf));
	if (error) {
		FUNC1(&client->dev, "failed to request checksum\n");
		return error;
	}

	FUNC3(pkt_buf, 0, sizeof(pkt_buf));
	pkt_buf[CMD_REPORT_ID_OFFSET] = VND_READ_DATA;
	error = FUNC5(client, pkt_buf, sizeof(pkt_buf));
	if (error) {
		FUNC1(&client->dev, "failed to read checksum\n");
		return error;
	}

	*checksum = FUNC2(&pkt_buf[CMD_DATA_OFFSET]);
	return 0;
}