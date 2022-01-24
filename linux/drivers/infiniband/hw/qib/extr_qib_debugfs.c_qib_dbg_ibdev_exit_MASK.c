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
struct qib_ibdev {int /*<<< orphan*/ * qib_ibdev_dbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qib_dbg_root ; 

void FUNC1(struct qib_ibdev *ibd)
{
	if (!qib_dbg_root)
		goto out;
	FUNC0(ibd->qib_ibdev_dbg);
out:
	ibd->qib_ibdev_dbg = NULL;
}