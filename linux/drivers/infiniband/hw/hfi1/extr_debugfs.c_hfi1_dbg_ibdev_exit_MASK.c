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
struct hfi1_ibdev {int /*<<< orphan*/ * hfi1_ibdev_dbg; int /*<<< orphan*/  hfi1_ibdev_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hfi1_dbg_root ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ibdev*) ; 

void FUNC3(struct hfi1_ibdev *ibd)
{
	if (!hfi1_dbg_root)
		goto out;
	FUNC2(ibd);
	FUNC0(ibd->hfi1_ibdev_link);
	FUNC1(ibd->hfi1_ibdev_dbg);
out:
	ibd->hfi1_ibdev_dbg = NULL;
}