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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct elants_data {int /*<<< orphan*/  iap_mode; struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  recov_packet ;
typedef  int /*<<< orphan*/  hello_packet ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_TIME_DELAY_MS ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  ELAN_IAP_OPERATIONAL ; 
 int /*<<< orphan*/  ELAN_IAP_RECOVERY ; 
 int HEADER_SIZE ; 
 int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct elants_data*) ; 
 int FUNC3 (struct elants_data*) ; 
 int FUNC4 (struct elants_data*) ; 
 int FUNC5 (struct elants_data*) ; 
 int FUNC6 (struct elants_data*) ; 
 int FUNC7 (struct i2c_client*,int*,int) ; 
 int FUNC8 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct elants_data *ts)
{
	struct i2c_client *client = ts->client;
	int error, error2, retry_cnt;
	const u8 hello_packet[] = { 0x55, 0x55, 0x55, 0x55 };
	const u8 recov_packet[] = { 0x55, 0x55, 0x80, 0x80 };
	u8 buf[HEADER_SIZE];

	for (retry_cnt = 0; retry_cnt < MAX_RETRIES; retry_cnt++) {
		error = FUNC8(client);
		if (error) {
			/* Continue initializing if it's the last try */
			if (retry_cnt < MAX_RETRIES - 1)
				continue;
		}

		error = FUNC1(client);
		if (error) {
			/* Continue initializing if it's the last try */
			if (retry_cnt < MAX_RETRIES - 1)
				continue;
		}

		/* Wait for Hello packet */
		FUNC10(BOOT_TIME_DELAY_MS);

		error = FUNC7(client, buf, sizeof(buf));
		if (error) {
			FUNC0(&client->dev,
				"failed to read 'hello' packet: %d\n", error);
		} else if (!FUNC9(buf, hello_packet, sizeof(hello_packet))) {
			ts->iap_mode = ELAN_IAP_OPERATIONAL;
			break;
		} else if (!FUNC9(buf, recov_packet, sizeof(recov_packet))) {
			/*
			 * Setting error code will mark device
			 * in recovery mode below.
			 */
			error = -EIO;
			break;
		} else {
			error = -EINVAL;
			FUNC0(&client->dev,
				"invalid 'hello' packet: %*ph\n",
				(int)sizeof(buf), buf);
		}
	}

	/* hw version is available even if device in recovery state */
	error2 = FUNC4(ts);
	if (!error)
		error = error2;

	if (!error)
		error = FUNC3(ts);
	if (!error)
		error = FUNC5(ts);
	if (!error)
		error = FUNC2(ts);
	if (!error)
		error = FUNC6(ts);

	if (error)
		ts->iap_mode = ELAN_IAP_RECOVERY;

	return 0;
}