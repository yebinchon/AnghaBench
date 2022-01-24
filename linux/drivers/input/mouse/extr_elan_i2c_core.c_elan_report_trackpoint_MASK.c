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
struct input_dev {int dummy; } ;
struct elan_tp_data {TYPE_1__* client; struct input_dev* tp_input; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int ETP_REPORT_ID_OFFSET ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct elan_tp_data *data, u8 *report)
{
	struct input_dev *input = data->tp_input;
	u8 *packet = &report[ETP_REPORT_ID_OFFSET + 1];
	int x, y;

	if (!data->tp_input) {
		FUNC0(&data->client->dev,
			      "received a trackpoint report while no trackpoint device has been created. Please report upstream.\n");
		return;
	}

	FUNC1(input, BTN_LEFT, packet[0] & 0x01);
	FUNC1(input, BTN_RIGHT, packet[0] & 0x02);
	FUNC1(input, BTN_MIDDLE, packet[0] & 0x04);

	if ((packet[3] & 0x0F) == 0x06) {
		x = packet[4] - (int)((packet[1] ^ 0x80) << 1);
		y = (int)((packet[2] ^ 0x80) << 1) - packet[5];

		FUNC2(input, REL_X, x);
		FUNC2(input, REL_Y, y);
	}

	FUNC3(input);
}