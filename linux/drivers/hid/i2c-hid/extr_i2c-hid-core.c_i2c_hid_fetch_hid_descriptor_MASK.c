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
struct i2c_hid_desc {int /*<<< orphan*/  wHIDDescLength; int /*<<< orphan*/  bcdVersion; } ;
struct i2c_hid {int /*<<< orphan*/  hdesc_buffer; struct i2c_hid_desc hdesc; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  hid_descr_cmd ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_hid*,char*,...) ; 
 struct i2c_hid_desc* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_hid *ihid)
{
	struct i2c_client *client = ihid->client;
	struct i2c_hid_desc *hdesc = &ihid->hdesc;
	unsigned int dsize;
	int ret;

	/* i2c hid fetch using a fixed descriptor size (30 bytes) */
	if (FUNC3(client->name)) {
		FUNC2(ihid, "Using a HID descriptor override\n");
		ihid->hdesc =
			*FUNC3(client->name);
	} else {
		FUNC2(ihid, "Fetching the HID descriptor\n");
		ret = FUNC1(client, &hid_descr_cmd,
				      ihid->hdesc_buffer,
				      sizeof(struct i2c_hid_desc));
		if (ret) {
			FUNC0(&client->dev, "hid_descr_cmd failed\n");
			return -ENODEV;
		}
	}

	/* Validate the length of HID descriptor, the 4 first bytes:
	 * bytes 0-1 -> length
	 * bytes 2-3 -> bcdVersion (has to be 1.00) */
	/* check bcdVersion == 1.0 */
	if (FUNC4(hdesc->bcdVersion) != 0x0100) {
		FUNC0(&client->dev,
			"unexpected HID descriptor bcdVersion (0x%04hx)\n",
			FUNC4(hdesc->bcdVersion));
		return -ENODEV;
	}

	/* Descriptor length should be 30 bytes as per the specification */
	dsize = FUNC4(hdesc->wHIDDescLength);
	if (dsize != sizeof(struct i2c_hid_desc)) {
		FUNC0(&client->dev, "weird size of HID descriptor (%u)\n",
			dsize);
		return -ENODEV;
	}
	FUNC2(ihid, "HID Descriptor: %*ph\n", dsize, ihid->hdesc_buffer);
	return 0;
}