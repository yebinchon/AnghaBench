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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct elants_data {void* y_max; void* y_res; void* x_max; void* x_res; struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  get_resolution_cmd ;
typedef  int /*<<< orphan*/  get_physical_scan_cmd ;
typedef  int /*<<< orphan*/  get_physical_drive_cmd ;
typedef  int /*<<< orphan*/  get_osr_cmd ;

/* Variables and functions */
 int CMD_HEADER_6B_READ ; 
 int CMD_HEADER_READ ; 
 void* FUNC0 (void*,scalar_t__) ; 
 void* FUNC1 (scalar_t__,scalar_t__) ; 
 int E_INFO_OSR ; 
 int E_INFO_PHY_DRIVER ; 
 int E_INFO_PHY_SCAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct i2c_client*,int const*,int,int*,int) ; 
 scalar_t__ FUNC6 (int*) ; 

__attribute__((used)) static int FUNC7(struct elants_data *ts)
{
	struct i2c_client *client = ts->client;
	int error;
	u8 resp[17];
	u16 phy_x, phy_y, rows, cols, osr;
	const u8 get_resolution_cmd[] = {
		CMD_HEADER_6B_READ, 0x00, 0x00, 0x00, 0x00, 0x00
	};
	const u8 get_osr_cmd[] = {
		CMD_HEADER_READ, E_INFO_OSR, 0x00, 0x01
	};
	const u8 get_physical_scan_cmd[] = {
		CMD_HEADER_READ, E_INFO_PHY_SCAN, 0x00, 0x01
	};
	const u8 get_physical_drive_cmd[] = {
		CMD_HEADER_READ, E_INFO_PHY_DRIVER, 0x00, 0x01
	};

	/* Get trace number */
	error = FUNC5(client,
					   get_resolution_cmd,
					   sizeof(get_resolution_cmd),
					   resp, sizeof(resp));
	if (error) {
		FUNC3(&client->dev, "get resolution command failed: %d\n",
			error);
		return error;
	}

	rows = resp[2] + resp[6] + resp[10];
	cols = resp[3] + resp[7] + resp[11];

	/* Process mm_to_pixel information */
	error = FUNC5(client,
					   get_osr_cmd, sizeof(get_osr_cmd),
					   resp, sizeof(resp));
	if (error) {
		FUNC3(&client->dev, "get osr command failed: %d\n",
			error);
		return error;
	}

	osr = resp[3];

	error = FUNC5(client,
					   get_physical_scan_cmd,
					   sizeof(get_physical_scan_cmd),
					   resp, sizeof(resp));
	if (error) {
		FUNC3(&client->dev, "get physical scan command failed: %d\n",
			error);
		return error;
	}

	phy_x = FUNC6(&resp[2]);

	error = FUNC5(client,
					   get_physical_drive_cmd,
					   sizeof(get_physical_drive_cmd),
					   resp, sizeof(resp));
	if (error) {
		FUNC3(&client->dev, "get physical drive command failed: %d\n",
			error);
		return error;
	}

	phy_y = FUNC6(&resp[2]);

	FUNC2(&client->dev, "phy_x=%d, phy_y=%d\n", phy_x, phy_y);

	if (rows == 0 || cols == 0 || osr == 0) {
		FUNC4(&client->dev,
			 "invalid trace number data: %d, %d, %d\n",
			 rows, cols, osr);
	} else {
		/* translate trace number to TS resolution */
		ts->x_max = FUNC1(rows, osr);
		ts->x_res = FUNC0(ts->x_max, phy_x);
		ts->y_max = FUNC1(cols, osr);
		ts->y_res = FUNC0(ts->y_max, phy_y);
	}

	return 0;
}