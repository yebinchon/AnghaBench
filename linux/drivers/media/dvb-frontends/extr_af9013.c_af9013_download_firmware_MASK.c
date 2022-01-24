#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct firmware {int size; int* data; } ;
struct af9013_state {int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct TYPE_3__ {char const* name; } ;
struct TYPE_4__ {TYPE_1__ info; } ;

/* Variables and functions */
 char* AF9013_FIRMWARE ; 
 int ENODEV ; 
 scalar_t__ LEN_MAX ; 
 TYPE_2__ af9013_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int FUNC3 (scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,unsigned int,int,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int FUNC9 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct af9013_state *state)
{
	struct i2c_client *client = state->client;
	int ret, i, len, rem;
	unsigned int utmp;
	u8 buf[4];
	u16 checksum = 0;
	const struct firmware *firmware;
	const char *name = AF9013_FIRMWARE;

	FUNC0(&client->dev, "\n");

	/* Check whether firmware is already running */
	ret = FUNC5(state->regmap, 0x98be, &utmp);
	if (ret)
		goto err;

	FUNC0(&client->dev, "firmware status %02x\n", utmp);

	if (utmp == 0x0c)
		return 0;

	FUNC2(&client->dev, "found a '%s' in cold state, will try to load a firmware\n",
		 af9013_ops.info.name);

	/* Request the firmware, will block and timeout */
	ret = FUNC9(&firmware, name, &client->dev);
	if (ret) {
		FUNC2(&client->dev, "firmware file '%s' not found %d\n",
			 name, ret);
		goto err;
	}

	FUNC2(&client->dev, "downloading firmware from file '%s'\n",
		 name);

	/* Write firmware checksum & size */
	for (i = 0; i < firmware->size; i++)
		checksum += firmware->data[i];

	buf[0] = (checksum >> 8) & 0xff;
	buf[1] = (checksum >> 0) & 0xff;
	buf[2] = (firmware->size >> 8) & 0xff;
	buf[3] = (firmware->size >> 0) & 0xff;
	ret = FUNC4(state->regmap, 0x50fc, buf, 4);
	if (ret)
		goto err_release_firmware;

	/* Download firmware */
	#define LEN_MAX 16
	for (rem = firmware->size; rem > 0; rem -= LEN_MAX) {
		len = FUNC3(LEN_MAX, rem);
		ret = FUNC4(state->regmap,
					0x5100 + firmware->size - rem,
					&firmware->data[firmware->size - rem],
					len);
		if (ret) {
			FUNC1(&client->dev, "firmware download failed %d\n",
				ret);
			goto err_release_firmware;
		}
	}

	FUNC8(firmware);

	/* Boot firmware */
	ret = FUNC7(state->regmap, 0xe205, 0x01);
	if (ret)
		goto err;

	/* Check firmware status. 0c=OK, 04=fail */
	ret = FUNC6(state->regmap, 0x98be, utmp,
				       (utmp == 0x0c || utmp == 0x04),
				       5000, 1000000);
	if (ret)
		goto err;

	FUNC0(&client->dev, "firmware status %02x\n", utmp);

	if (utmp == 0x04) {
		ret = -ENODEV;
		FUNC1(&client->dev, "firmware did not run\n");
		goto err;
	} else if (utmp != 0x0c) {
		ret = -ENODEV;
		FUNC1(&client->dev, "firmware boot timeout\n");
		goto err;
	}

	FUNC2(&client->dev, "found a '%s' in warm state\n",
		 af9013_ops.info.name);

	return 0;
err_release_firmware:
	FUNC8(firmware);
err:
	FUNC0(&client->dev, "failed %d\n", ret);
	return ret;
}