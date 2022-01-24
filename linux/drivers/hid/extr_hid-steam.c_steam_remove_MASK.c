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
struct steam_device {int client_opened; int quirks; int /*<<< orphan*/  work_connect; int /*<<< orphan*/  client_hdev; } ;
struct hid_device {scalar_t__ group; } ;

/* Variables and functions */
 scalar_t__ HID_GROUP_STEAM ; 
 int STEAM_QUIRK_WIRELESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct steam_device* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct steam_device*) ; 

__attribute__((used)) static void FUNC7(struct hid_device *hdev)
{
	struct steam_device *steam = FUNC2(hdev);

	if (!steam || hdev->group == HID_GROUP_STEAM) {
		FUNC4(hdev);
		return;
	}

	FUNC1(steam->client_hdev);
	steam->client_opened = false;
	FUNC0(&steam->work_connect);
	if (steam->quirks & STEAM_QUIRK_WIRELESS) {
		FUNC5(hdev, "Steam wireless receiver disconnected");
	}
	FUNC3(hdev);
	FUNC4(hdev);
	FUNC6(steam);
}