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
struct wacom_wac {int is_invalid_bt_frame; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 struct wacom* FUNC0 (struct hid_device*) ; 

__attribute__((used)) static void FUNC1(struct hid_device *hdev,
		struct hid_report *report)
{
	struct wacom *wacom = FUNC0(hdev);
	struct wacom_wac *wacom_wac = &wacom->wacom_wac;

	wacom_wac->is_invalid_bt_frame = false;
	return;
}