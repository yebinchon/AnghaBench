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
struct u2fzero_device {int present; int /*<<< orphan*/  urb; int /*<<< orphan*/  lock; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 struct u2fzero_device* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hid_device *hdev)
{
	struct u2fzero_device *dev = FUNC0(hdev);

	FUNC2(&dev->lock);
	dev->present = false;
	FUNC3(&dev->lock);

	FUNC1(hdev);
	FUNC5(dev->urb);
	FUNC4(dev->urb);
}