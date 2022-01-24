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
struct mip4_ts {int /*<<< orphan*/  ppm_y; int /*<<< orphan*/  input; int /*<<< orphan*/  ppm_x; int /*<<< orphan*/  max_y; int /*<<< orphan*/  max_x; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  MIP4_BL_PACKET_SIZE ; 
 scalar_t__ MIP4_BL_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mip4_ts*) ; 
 int FUNC5 (struct mip4_ts*) ; 
 int FUNC6 (struct mip4_ts*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mip4_ts*,int,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mip4_ts*,int,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mip4_ts*) ; 
 int /*<<< orphan*/  FUNC10 (struct mip4_ts*) ; 
 int /*<<< orphan*/  FUNC11 (struct mip4_ts*) ; 

__attribute__((used)) static int FUNC12(struct mip4_ts *ts,
			 const u8 *fw_data, u32 fw_size, u32 fw_offset)
{
	struct i2c_client *client = ts->client;
	int offset;
	u16 buf_addr;
	int error, error2;

	/* Enter bootloader mode */
	FUNC0(&client->dev, "Entering bootloader mode\n");

	error = FUNC4(ts);
	if (error) {
		FUNC1(&client->dev,
			"Failed to enter bootloader mode: %d\n",
			error);
		return error;
	}

	/* Read info */
	error = FUNC6(ts, &buf_addr);
	if (error)
		goto exit_bl;

	/* Program & Verify */
	FUNC0(&client->dev,
		"Program & Verify, page size: %d, packet size: %d\n",
		MIP4_BL_PAGE_SIZE, MIP4_BL_PACKET_SIZE);

	for (offset = fw_offset;
	     offset < fw_offset + fw_size;
	     offset += MIP4_BL_PAGE_SIZE) {
		/* Program */
		error = FUNC7(ts, offset, fw_data + offset,
					     MIP4_BL_PAGE_SIZE, buf_addr);
		if (error)
			break;

		/* Verify */
		error = FUNC8(ts, offset, fw_data + offset,
					    MIP4_BL_PAGE_SIZE, buf_addr);
		if (error)
			break;
	}

exit_bl:
	/* Exit bootloader mode */
	FUNC0(&client->dev, "Exiting bootloader mode\n");

	error2 = FUNC5(ts);
	if (error2) {
		FUNC1(&client->dev,
			"Failed to exit bootloader mode: %d\n", error2);
		if (!error)
			error = error2;
	}

	/* Reset chip */
	FUNC9(ts);
	FUNC10(ts);

	FUNC11(ts);

	/* Refresh device parameters */
	FUNC3(ts->input, ABS_MT_POSITION_X, 0, ts->max_x, 0, 0);
	FUNC3(ts->input, ABS_MT_POSITION_Y, 0, ts->max_y, 0, 0);
	FUNC3(ts->input, ABS_X, 0, ts->max_x, 0, 0);
	FUNC3(ts->input, ABS_Y, 0, ts->max_y, 0, 0);
	FUNC2(ts->input, ABS_MT_POSITION_X, ts->ppm_x);
	FUNC2(ts->input, ABS_MT_POSITION_Y, ts->ppm_y);
	FUNC2(ts->input, ABS_X, ts->ppm_x);
	FUNC2(ts->input, ABS_Y, ts->ppm_y);

	return error ? error : 0;
}