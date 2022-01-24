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
struct zforce_ts {int boot_complete; int version_major; int version_minor; int version_build; int version_rev; scalar_t__ suspending; struct i2c_client* client; int /*<<< orphan*/  gpio_int; scalar_t__ suspended; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FRAME_MAXSIZE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  NOTIFICATION_BOOTCOMPLETE 136 
#define  NOTIFICATION_INVALID_COMMAND 135 
#define  NOTIFICATION_TOUCH 134 
 size_t PAYLOAD_BODY ; 
 size_t RESPONSE_DATA ; 
#define  RESPONSE_DEACTIVATE 133 
 size_t RESPONSE_ID ; 
#define  RESPONSE_INITIALIZE 132 
#define  RESPONSE_RESOLUTION 131 
#define  RESPONSE_SCANFREQ 130 
#define  RESPONSE_SETCONFIG 129 
#define  RESPONSE_STATUS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct zforce_ts*,int,int) ; 
 int FUNC9 (struct zforce_ts*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct zforce_ts*,int*) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct zforce_ts *ts = dev_id;
	struct i2c_client *client = ts->client;
	int ret;
	u8 payload_buffer[FRAME_MAXSIZE];
	u8 *payload;

	/*
	 * When still suspended, return.
	 * Due to the level-interrupt we will get re-triggered later.
	 */
	if (ts->suspended) {
		FUNC4(20);
		return IRQ_HANDLED;
	}

	FUNC0(&client->dev, "handling interrupt\n");

	/* Don't emit wakeup events from commands run by zforce_suspend */
	if (!ts->suspending && FUNC2(&client->dev))
		FUNC6(&client->dev);

	/*
	 * Run at least once and exit the loop if
	 * - the optional interrupt GPIO isn't specified
	 *   (there is only one packet read per ISR invocation, then)
	 * or
	 * - the GPIO isn't active any more
	 *   (packet read until the level GPIO indicates that there is
	 *    no IRQ any more)
	 */
	do {
		ret = FUNC9(ts, payload_buffer);
		if (ret < 0) {
			FUNC1(&client->dev,
				"could not read packet, ret: %d\n", ret);
			break;
		}

		payload =  &payload_buffer[PAYLOAD_BODY];

		switch (payload[RESPONSE_ID]) {
		case NOTIFICATION_TOUCH:
			/*
			 * Always report touch-events received while
			 * suspending, when being a wakeup source
			 */
			if (ts->suspending && FUNC2(&client->dev))
				FUNC7(&client->dev, 500);
			FUNC10(ts, &payload[RESPONSE_DATA]);
			break;

		case NOTIFICATION_BOOTCOMPLETE:
			ts->boot_complete = payload[RESPONSE_DATA];
			FUNC8(ts, payload[RESPONSE_ID], 0);
			break;

		case RESPONSE_INITIALIZE:
		case RESPONSE_DEACTIVATE:
		case RESPONSE_SETCONFIG:
		case RESPONSE_RESOLUTION:
		case RESPONSE_SCANFREQ:
			FUNC8(ts, payload[RESPONSE_ID],
					payload[RESPONSE_DATA]);
			break;

		case RESPONSE_STATUS:
			/*
			 * Version Payload Results
			 * [2:major] [2:minor] [2:build] [2:rev]
			 */
			ts->version_major = (payload[RESPONSE_DATA + 1] << 8) |
						payload[RESPONSE_DATA];
			ts->version_minor = (payload[RESPONSE_DATA + 3] << 8) |
						payload[RESPONSE_DATA + 2];
			ts->version_build = (payload[RESPONSE_DATA + 5] << 8) |
						payload[RESPONSE_DATA + 4];
			ts->version_rev   = (payload[RESPONSE_DATA + 7] << 8) |
						payload[RESPONSE_DATA + 6];
			FUNC0(&ts->client->dev,
				"Firmware Version %04x:%04x %04x:%04x\n",
				ts->version_major, ts->version_minor,
				ts->version_build, ts->version_rev);

			FUNC8(ts, payload[RESPONSE_ID], 0);
			break;

		case NOTIFICATION_INVALID_COMMAND:
			FUNC1(&ts->client->dev, "invalid command: 0x%x\n",
				payload[RESPONSE_DATA]);
			break;

		default:
			FUNC1(&ts->client->dev,
				"unrecognized response id: 0x%x\n",
				payload[RESPONSE_ID]);
			break;
		}
	} while (FUNC3(ts->gpio_int));

	if (!ts->suspending && FUNC2(&client->dev))
		FUNC5(&client->dev);

	FUNC0(&client->dev, "finished interrupt\n");

	return IRQ_HANDLED;
}