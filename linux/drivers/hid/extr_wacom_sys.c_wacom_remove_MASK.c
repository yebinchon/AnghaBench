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
struct wacom_features {int device_type; scalar_t__ type; } ;
struct wacom_wac {int /*<<< orphan*/  pen_fifo; struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; int /*<<< orphan*/  mode_change_work; int /*<<< orphan*/  remote_work; int /*<<< orphan*/  battery_work; int /*<<< orphan*/  wireless_work; int /*<<< orphan*/  init_work; } ;
struct hid_device {scalar_t__ bus; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BUS_BLUETOOTH ; 
 scalar_t__ REMOTE ; 
 int WACOM_DEVICETYPE_WL_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_speed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wacom* FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC8 (struct wacom*) ; 

__attribute__((used)) static void FUNC9(struct hid_device *hdev)
{
	struct wacom *wacom = FUNC3(hdev);
	struct wacom_wac *wacom_wac = &wacom->wacom_wac;
	struct wacom_features *features = &wacom_wac->features;

	if (features->device_type & WACOM_DEVICETYPE_WL_MONITOR)
		FUNC4(hdev);

	FUNC5(hdev);

	FUNC0(&wacom->init_work);
	FUNC1(&wacom->wireless_work);
	FUNC1(&wacom->battery_work);
	FUNC1(&wacom->remote_work);
	FUNC1(&wacom->mode_change_work);
	if (hdev->bus == BUS_BLUETOOTH)
		FUNC2(&hdev->dev, &dev_attr_speed);

	/* make sure we don't trigger the LEDs */
	FUNC7(wacom);

	if (wacom->wacom_wac.features.type != REMOTE)
		FUNC8(wacom);

	FUNC6(&wacom_wac->pen_fifo);
}