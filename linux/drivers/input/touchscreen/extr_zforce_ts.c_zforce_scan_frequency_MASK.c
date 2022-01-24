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
typedef  int u16 ;
struct zforce_ts {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int COMMAND_SCANFREQ ; 
 int FRAME_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC2 (struct zforce_ts*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct zforce_ts *ts, u16 idle, u16 finger,
				 u16 stylus)
{
	struct i2c_client *client = ts->client;
	char buf[9] = { FRAME_START, 7, COMMAND_SCANFREQ,
			(idle & 0xff), ((idle >> 8) & 0xff),
			(finger & 0xff), ((finger >> 8) & 0xff),
			(stylus & 0xff), ((stylus >> 8) & 0xff) };

	FUNC1(&client->dev,
		"set scan frequency to (idle: %d, finger: %d, stylus: %d)\n",
		idle, finger, stylus);

	return FUNC2(ts, &buf[0], FUNC0(buf));
}