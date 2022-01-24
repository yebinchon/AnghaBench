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
struct zforce_ts {int /*<<< orphan*/  access_mutex; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int FRAME_START ; 
 size_t PAYLOAD_BODY ; 
 size_t PAYLOAD_HEADER ; 
 size_t PAYLOAD_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct zforce_ts *ts, u8 *buf)
{
	struct i2c_client *client = ts->client;
	int ret;

	FUNC3(&ts->access_mutex);

	/* read 2 byte message header */
	ret = FUNC2(client, buf, 2);
	if (ret < 0) {
		FUNC1(&client->dev, "error reading header: %d\n", ret);
		goto unlock;
	}

	if (buf[PAYLOAD_HEADER] != FRAME_START) {
		FUNC1(&client->dev, "invalid frame start: %d\n", buf[0]);
		ret = -EIO;
		goto unlock;
	}

	if (buf[PAYLOAD_LENGTH] == 0) {
		FUNC1(&client->dev, "invalid payload length: %d\n",
			buf[PAYLOAD_LENGTH]);
		ret = -EIO;
		goto unlock;
	}

	/* read the message */
	ret = FUNC2(client, &buf[PAYLOAD_BODY], buf[PAYLOAD_LENGTH]);
	if (ret < 0) {
		FUNC1(&client->dev, "error reading payload: %d\n", ret);
		goto unlock;
	}

	FUNC0(&client->dev, "read %d bytes for response command 0x%x\n",
		buf[PAYLOAD_LENGTH], buf[PAYLOAD_BODY]);

unlock:
	FUNC4(&ts->access_mutex);
	return ret;
}