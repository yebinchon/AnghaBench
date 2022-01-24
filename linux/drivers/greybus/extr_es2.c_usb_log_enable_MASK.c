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
struct es2_ap_dev {int /*<<< orphan*/  apb_log_dentry; int /*<<< orphan*/  apb_log_task; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apb_log_fops ; 
 int /*<<< orphan*/  apb_log_poll ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,struct es2_ap_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct es2_ap_dev*,char*) ; 

__attribute__((used)) static void FUNC5(struct es2_ap_dev *es2)
{
	if (!FUNC1(es2->apb_log_task))
		return;

	/* get log from APB1 */
	es2->apb_log_task = FUNC4(apb_log_poll, es2, "apb_log");
	if (FUNC0(es2->apb_log_task))
		return;
	/* XXX We will need to rename this per APB */
	es2->apb_log_dentry = FUNC2("apb_log", 0444,
						  FUNC3(), es2,
						  &apb_log_fops);
}