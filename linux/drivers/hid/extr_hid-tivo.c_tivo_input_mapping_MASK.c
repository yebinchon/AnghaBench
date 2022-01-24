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
struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
#define  HID_UP_CONSUMER 129 
#define  HID_UP_TIVOVENDOR 128 
 int HID_USAGE ; 
 int HID_USAGE_PAGE ; 
 int /*<<< orphan*/  KEY_ENTER ; 
 int /*<<< orphan*/  KEY_INFO ; 
 int /*<<< orphan*/  KEY_KPMINUS ; 
 int /*<<< orphan*/  KEY_KPPLUS ; 
 int /*<<< orphan*/  KEY_MEDIA ; 
 int /*<<< orphan*/  KEY_TV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hid_device *hdev, struct hid_input *hi,
		struct hid_field *field, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	switch (usage->hid & HID_USAGE_PAGE) {
	case HID_UP_TIVOVENDOR:
		switch (usage->hid & HID_USAGE) {
		/* TiVo button */
		case 0x3d: FUNC0(KEY_MEDIA);	break;
		/* Live TV */
		case 0x3e: FUNC0(KEY_TV);		break;
		/* Red thumbs down */
		case 0x41: FUNC0(KEY_KPMINUS);	break;
		/* Green thumbs up */
		case 0x42: FUNC0(KEY_KPPLUS);	break;
		default:
			return 0;
		}
		break;
	case HID_UP_CONSUMER:
		switch (usage->hid & HID_USAGE) {
		/* Enter/Last (default mapping: KEY_LAST) */
		case 0x083: FUNC0(KEY_ENTER);	break;
		/* Info (default mapping: KEY_PROPS) */
		case 0x209: FUNC0(KEY_INFO);	break;
		default:
			return 0;
		}
		break;
	default:
		return 0;
	}

	/* This means we found a matching mapping here, else, look in the
	 * standard hid mappings in hid-input.c */
	return 1;
}