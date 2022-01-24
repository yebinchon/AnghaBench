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
typedef  int /*<<< orphan*/  u8 ;
struct goodix_ts_data {int id; int /*<<< orphan*/  version; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOODIX_REG_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct goodix_ts_data *ts)
{
	int error;
	u8 buf[6];
	char id_str[5];

	error = FUNC3(ts->client, GOODIX_REG_ID, buf, sizeof(buf));
	if (error) {
		FUNC0(&ts->client->dev, "read version failed: %d\n", error);
		return error;
	}

	FUNC5(id_str, buf, 4);
	id_str[4] = 0;
	if (FUNC4(id_str, 10, &ts->id))
		ts->id = 0x1001;

	ts->version = FUNC2(&buf[4]);

	FUNC1(&ts->client->dev, "ID %d, version: %04x\n", ts->id,
		 ts->version);

	return 0;
}