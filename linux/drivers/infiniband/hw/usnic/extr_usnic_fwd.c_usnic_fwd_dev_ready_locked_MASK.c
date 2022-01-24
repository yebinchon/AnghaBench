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
struct usnic_fwd_dev {int /*<<< orphan*/  link_up; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct usnic_fwd_dev *ufdev)
{
	FUNC0(&ufdev->lock);

	if (!ufdev->link_up)
		return -EPERM;

	return 0;
}