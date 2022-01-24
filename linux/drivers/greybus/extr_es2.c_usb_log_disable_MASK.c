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
struct es2_ap_dev {int /*<<< orphan*/ * apb_log_task; int /*<<< orphan*/ * apb_log_dentry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct es2_ap_dev *es2)
{
	if (FUNC0(es2->apb_log_task))
		return;

	FUNC1(es2->apb_log_dentry);
	es2->apb_log_dentry = NULL;

	FUNC2(es2->apb_log_task);
	es2->apb_log_task = NULL;
}