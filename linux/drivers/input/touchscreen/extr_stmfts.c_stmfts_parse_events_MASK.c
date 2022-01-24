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
struct stmfts_data {int* data; TYPE_1__* client; int /*<<< orphan*/  cmd_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int STMFTS_EVENT_SIZE ; 
#define  STMFTS_EV_CONTROLLER_READY 140 
#define  STMFTS_EV_DEBUG 139 
#define  STMFTS_EV_ERROR 138 
#define  STMFTS_EV_HOVER_ENTER 137 
#define  STMFTS_EV_HOVER_LEAVE 136 
#define  STMFTS_EV_HOVER_MOTION 135 
#define  STMFTS_EV_KEY_STATUS 134 
#define  STMFTS_EV_MULTI_TOUCH_ENTER 133 
#define  STMFTS_EV_MULTI_TOUCH_LEAVE 132 
#define  STMFTS_EV_MULTI_TOUCH_MOTION 131 
#define  STMFTS_EV_NO_EVENT 130 
#define  STMFTS_EV_SLEEP_OUT_CONTROLLER_READY 129 
#define  STMFTS_EV_STATUS 128 
 int STMFTS_MASK_EVENT_ID ; 
 int STMFTS_STACK_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stmfts_data*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct stmfts_data*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct stmfts_data*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct stmfts_data*,int*) ; 

__attribute__((used)) static void FUNC7(struct stmfts_data *sdata)
{
	int i;

	for (i = 0; i < STMFTS_STACK_DEPTH; i++) {
		u8 *event = &sdata->data[i * STMFTS_EVENT_SIZE];

		switch (event[0]) {

		case STMFTS_EV_CONTROLLER_READY:
		case STMFTS_EV_SLEEP_OUT_CONTROLLER_READY:
		case STMFTS_EV_STATUS:
			FUNC0(&sdata->cmd_done);
			/* fall through */

		case STMFTS_EV_NO_EVENT:
		case STMFTS_EV_DEBUG:
			return;
		}

		switch (event[0] & STMFTS_MASK_EVENT_ID) {

		case STMFTS_EV_MULTI_TOUCH_ENTER:
		case STMFTS_EV_MULTI_TOUCH_MOTION:
			FUNC3(sdata, event);
			break;

		case STMFTS_EV_MULTI_TOUCH_LEAVE:
			FUNC4(sdata, event);
			break;

		case STMFTS_EV_HOVER_ENTER:
		case STMFTS_EV_HOVER_LEAVE:
		case STMFTS_EV_HOVER_MOTION:
			FUNC5(sdata, event);
			break;

		case STMFTS_EV_KEY_STATUS:
			FUNC6(sdata, event);
			break;

		case STMFTS_EV_ERROR:
			FUNC2(&sdata->client->dev,
					"error code: 0x%x%x%x%x%x%x",
					event[6], event[5], event[4],
					event[3], event[2], event[1]);
			break;

		default:
			FUNC1(&sdata->client->dev,
				"unknown event %#02x\n", event[0]);
		}
	}
}