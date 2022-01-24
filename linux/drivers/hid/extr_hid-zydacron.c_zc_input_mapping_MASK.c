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
struct zc_device {scalar_t__* last_key; int /*<<< orphan*/  input_ep81; } ;
struct hid_usage {int hid; } ;
struct hid_input {int /*<<< orphan*/  input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int HID_UP_CONSUMER ; 
 int HID_USAGE ; 
 int HID_USAGE_PAGE ; 
 int /*<<< orphan*/  KEY_AUDIO ; 
 int /*<<< orphan*/  KEY_AUX ; 
 int /*<<< orphan*/  KEY_DVD ; 
 int /*<<< orphan*/  KEY_INFO ; 
 int /*<<< orphan*/  KEY_MENU ; 
 int /*<<< orphan*/  KEY_MODE ; 
 int /*<<< orphan*/  KEY_PVR ; 
 int /*<<< orphan*/  KEY_RADIO ; 
 int /*<<< orphan*/  KEY_SCREEN ; 
 int /*<<< orphan*/  KEY_TEXT ; 
 int /*<<< orphan*/  KEY_TV ; 
 int /*<<< orphan*/  KEY_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct zc_device* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hdev, struct hid_input *hi,
	struct hid_field *field, struct hid_usage *usage,
	unsigned long **bit, int *max)
{
	int i;
	struct zc_device *zc = FUNC1(hdev);
	zc->input_ep81 = hi->input;

	if ((usage->hid & HID_USAGE_PAGE) != HID_UP_CONSUMER)
		return 0;

	FUNC0("zynacron input mapping event [0x%x]\n",
		usage->hid & HID_USAGE);

	switch (usage->hid & HID_USAGE) {
	/* report 2 */
	case 0x10:
		FUNC2(KEY_MODE);
		break;
	case 0x30:
		FUNC2(KEY_SCREEN);
		break;
	case 0x70:
		FUNC2(KEY_INFO);
		break;
	/* report 3 */
	case 0x04:
		FUNC2(KEY_RADIO);
		break;
	/* report 4 */
	case 0x0d:
		FUNC2(KEY_PVR);
		break;
	case 0x25:
		FUNC2(KEY_TV);
		break;
	case 0x47:
		FUNC2(KEY_AUDIO);
		break;
	case 0x49:
		FUNC2(KEY_AUX);
		break;
	case 0x4a:
		FUNC2(KEY_VIDEO);
		break;
	case 0x48:
		FUNC2(KEY_DVD);
		break;
	case 0x24:
		FUNC2(KEY_MENU);
		break;
	case 0x32:
		FUNC2(KEY_TEXT);
		break;
	default:
		return 0;
	}

	for (i = 0; i < 4; i++)
		zc->last_key[i] = 0;

	return 1;
}