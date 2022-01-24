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
struct poll_table_struct {int dummy; } ;
struct mbox_test_device {int /*<<< orphan*/  waitq; } ;
struct file {struct mbox_test_device* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 scalar_t__ FUNC0 (struct mbox_test_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t
FUNC2(struct file *filp, struct poll_table_struct *wait)
{
	struct mbox_test_device *tdev = filp->private_data;

	FUNC1(filp, &tdev->waitq, wait);

	if (FUNC0(tdev))
		return EPOLLIN | EPOLLRDNORM;
	return 0;
}