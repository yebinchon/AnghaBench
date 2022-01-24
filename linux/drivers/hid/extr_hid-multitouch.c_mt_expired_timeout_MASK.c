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
struct timer_list {int dummy; } ;
struct mt_device {int /*<<< orphan*/  mt_io_flags; struct hid_device* hdev; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_IO_FLAGS_PENDING_SLOTS ; 
 int /*<<< orphan*/  MT_IO_FLAGS_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mt_device* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  release_timer ; 
 struct mt_device* td ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct mt_device *td = FUNC1(td, t, release_timer);
	struct hid_device *hdev = td->hdev;

	/*
	 * An input report came in just before we release the sticky fingers,
	 * it will take care of the sticky fingers.
	 */
	if (FUNC3(MT_IO_FLAGS_RUNNING, &td->mt_io_flags))
		return;
	if (FUNC4(MT_IO_FLAGS_PENDING_SLOTS, &td->mt_io_flags))
		FUNC2(hdev);
	FUNC0(MT_IO_FLAGS_RUNNING, &td->mt_io_flags);
}