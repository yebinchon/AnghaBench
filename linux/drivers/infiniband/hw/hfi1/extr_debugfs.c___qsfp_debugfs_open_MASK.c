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
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct hfi1_pportdata {int /*<<< orphan*/  dd; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct hfi1_pportdata* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *in, struct file *fp, u32 target)
{
	struct hfi1_pportdata *ppd;
	int ret;

	if (!FUNC4(THIS_MODULE))
		return -ENODEV;

	ppd = FUNC3(fp);

	ret = FUNC0(ppd->dd, FUNC1(target), 0);
	if (ret) /* failed - release the module */
		FUNC2(THIS_MODULE);

	return ret;
}