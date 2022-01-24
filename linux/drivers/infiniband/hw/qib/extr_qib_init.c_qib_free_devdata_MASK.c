#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rdi; } ;
struct qib_devdata {TYPE_1__ verbs_dev; int /*<<< orphan*/  int_counter; int /*<<< orphan*/  unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  qib_dev_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct qib_devdata *dd)
{
	unsigned long flags;

	FUNC4(&qib_dev_table, flags);
	FUNC0(&qib_dev_table, dd->unit);
	FUNC5(&qib_dev_table, flags);

#ifdef CONFIG_DEBUG_FS
	qib_dbg_ibdev_exit(&dd->verbs_dev);
#endif
	FUNC1(dd->int_counter);
	FUNC3(&dd->verbs_dev.rdi);
}