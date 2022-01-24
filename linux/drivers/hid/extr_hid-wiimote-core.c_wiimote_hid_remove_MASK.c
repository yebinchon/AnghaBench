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
struct wiimote_data {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 struct wiimote_data* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_data*) ; 

__attribute__((used)) static void FUNC3(struct hid_device *hdev)
{
	struct wiimote_data *wdata = FUNC0(hdev);

	FUNC1(hdev, "Device removed\n");
	FUNC2(wdata);
}