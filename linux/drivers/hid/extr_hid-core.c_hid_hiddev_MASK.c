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
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  hid_hiddev_list ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct hid_device *hdev)
{
	return !!FUNC0(hdev, hid_hiddev_list);
}