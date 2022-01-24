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
struct hidpp_device {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  disable_tap_to_click ; 
 struct hidpp_device* FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct hidpp_device*) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, bool connected)
{
	struct hidpp_device *hidpp = FUNC0(hdev);

	if (!disable_tap_to_click)
		return 0;

	return FUNC1(hidpp);
}