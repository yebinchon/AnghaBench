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
struct zc_device {unsigned int* last_key; int /*<<< orphan*/  input_ep81; } ;
struct hid_report {int id; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 unsigned int KEY_INFO ; 
 unsigned int KEY_MODE ; 
 unsigned int KEY_RADIO ; 
 unsigned int KEY_SCREEN ; 
 struct zc_device* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, struct hid_report *report,
	 u8 *data, int size)
{
	struct zc_device *zc = FUNC0(hdev);
	int ret = 0;
	unsigned key;
	unsigned short index;

	if (report->id == data[0]) {

		/* break keys */
		for (index = 0; index < 4; index++) {
			key = zc->last_key[index];
			if (key) {
				FUNC1(zc->input_ep81, EV_KEY, key, 0);
				zc->last_key[index] = 0;
			}
		}

		key = 0;
		switch (report->id) {
		case 0x02:
		case 0x03:
			switch (data[1]) {
			case 0x10:
				key = KEY_MODE;
				index = 0;
				break;
			case 0x30:
				key = KEY_SCREEN;
				index = 1;
				break;
			case 0x70:
				key = KEY_INFO;
				index = 2;
				break;
			case 0x04:
				key = KEY_RADIO;
				index = 3;
				break;
			}

			if (key) {
				FUNC1(zc->input_ep81, EV_KEY, key, 1);
				zc->last_key[index] = key;
			}

			ret = 1;
			break;
		}
	}

	return ret;
}