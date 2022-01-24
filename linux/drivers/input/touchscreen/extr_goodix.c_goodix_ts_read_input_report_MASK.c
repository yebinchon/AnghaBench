#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct goodix_ts_data {int contact_size; int max_touch_num; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROTO ; 
 int GOODIX_BUFFER_STATUS_READY ; 
 int /*<<< orphan*/  GOODIX_BUFFER_STATUS_TIMEOUT ; 
 scalar_t__ GOODIX_READ_COOR_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int*,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct goodix_ts_data *ts, u8 *data)
{
	unsigned long max_timeout;
	int touch_num;
	int error;

	/*
	 * The 'buffer status' bit, which indicates that the data is valid, is
	 * not set as soon as the interrupt is raised, but slightly after.
	 * This takes around 10 ms to happen, so we poll for 20 ms.
	 */
	max_timeout = jiffies + FUNC2(GOODIX_BUFFER_STATUS_TIMEOUT);
	do {
		error = FUNC1(ts->client, GOODIX_READ_COOR_ADDR,
					data, ts->contact_size + 1);
		if (error) {
			FUNC0(&ts->client->dev, "I2C transfer error: %d\n",
					error);
			return error;
		}

		if (data[0] & GOODIX_BUFFER_STATUS_READY) {
			touch_num = data[0] & 0x0f;
			if (touch_num > ts->max_touch_num)
				return -EPROTO;

			if (touch_num > 1) {
				data += 1 + ts->contact_size;
				error = FUNC1(ts->client,
						GOODIX_READ_COOR_ADDR +
							1 + ts->contact_size,
						data,
						ts->contact_size *
							(touch_num - 1));
				if (error)
					return error;
			}

			return touch_num;
		}

		FUNC4(1000, 2000); /* Poll every 1 - 2 ms */
	} while (FUNC3(jiffies, max_timeout));

	/*
	 * The Goodix panel will send spurious interrupts after a
	 * 'finger up' event, which will always cause a timeout.
	 */
	return 0;
}