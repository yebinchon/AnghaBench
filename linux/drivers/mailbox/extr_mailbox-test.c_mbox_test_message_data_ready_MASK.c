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
struct mbox_test_device {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int mbox_data_ready ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC2(struct mbox_test_device *tdev)
{
	bool data_ready;
	unsigned long flags;

	FUNC0(&tdev->lock, flags);
	data_ready = mbox_data_ready;
	FUNC1(&tdev->lock, flags);

	return data_ready;
}