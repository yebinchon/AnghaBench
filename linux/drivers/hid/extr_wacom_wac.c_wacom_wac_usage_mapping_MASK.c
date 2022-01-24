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
struct wacom_features {int /*<<< orphan*/  device_type; } ;
struct wacom_wac {struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_usage {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hid_usage*) ; 
 int /*<<< orphan*/  WACOM_DEVICETYPE_DIRECT ; 
 scalar_t__ FUNC1 (struct hid_field*) ; 
 scalar_t__ FUNC2 (struct hid_field*) ; 
 scalar_t__ FUNC3 (struct hid_field*) ; 
 scalar_t__ FUNC4 (struct hid_field*) ; 
 struct wacom* FUNC5 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,struct hid_field*,struct hid_usage*) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,struct hid_field*,struct hid_usage*) ; 
 int /*<<< orphan*/  FUNC8 (struct hid_device*,struct hid_field*,struct hid_usage*) ; 
 int /*<<< orphan*/  FUNC9 (struct hid_device*,struct hid_field*,struct hid_usage*) ; 

void FUNC10(struct hid_device *hdev,
		struct hid_field *field, struct hid_usage *usage)
{
	struct wacom *wacom = FUNC5(hdev);
	struct wacom_wac *wacom_wac = &wacom->wacom_wac;
	struct wacom_features *features = &wacom_wac->features;

	if (FUNC1(field))
		features->device_type |= WACOM_DEVICETYPE_DIRECT;

	/* usage tests must precede field tests */
	if (FUNC0(usage))
		FUNC6(hdev, field, usage);
	else if (FUNC3(field))
		FUNC8(hdev, field, usage);
	else if (FUNC4(field))
		FUNC9(hdev, field, usage);
	else if (FUNC2(field))
		FUNC7(hdev, field, usage);
}