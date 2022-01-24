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
struct inode {int dummy; } ;
struct hfi1_pportdata {int /*<<< orphan*/  dd; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exprom_in_use ; 
 scalar_t__ exprom_wp_disabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct hfi1_pportdata* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct inode *in, struct file *fp)
{
	struct hfi1_pportdata *ppd = FUNC2(fp);

	if (exprom_wp_disabled)
		FUNC1(ppd->dd, false);
	FUNC0(0, &exprom_in_use);

	return 0;
}