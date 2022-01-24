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
struct input_dev {int dummy; } ;
struct elan_tp_data {struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  ETP_FINGER_DATA_LEN ; 
 size_t ETP_FINGER_DATA_OFFSET ; 
 size_t ETP_HOVER_INFO_OFFSET ; 
 int ETP_MAX_FINGERS ; 
 size_t ETP_TOUCH_INFO_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct elan_tp_data*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static void FUNC6(struct elan_tp_data *data, u8 *packet)
{
	struct input_dev *input = data->input;
	u8 *finger_data = &packet[ETP_FINGER_DATA_OFFSET];
	int i;
	u8 tp_info = packet[ETP_TOUCH_INFO_OFFSET];
	u8 hover_info = packet[ETP_HOVER_INFO_OFFSET];
	bool contact_valid, hover_event;

	hover_event = hover_info & 0x40;
	for (i = 0; i < ETP_MAX_FINGERS; i++) {
		contact_valid = tp_info & (1U << (3 + i));
		FUNC1(data, i, contact_valid, finger_data);

		if (contact_valid)
			finger_data += ETP_FINGER_DATA_LEN;
	}

	FUNC4(input, BTN_LEFT,   tp_info & FUNC0(0));
	FUNC4(input, BTN_MIDDLE, tp_info & FUNC0(2));
	FUNC4(input, BTN_RIGHT,  tp_info & FUNC0(1));
	FUNC3(input, ABS_DISTANCE, hover_event != 0);
	FUNC2(input, true);
	FUNC5(input);
}