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
struct tmc_drvdata {struct etr_buf* sysfs_buf; struct etr_buf* etr_buf; } ;
struct etr_buf {int /*<<< orphan*/  offset; scalar_t__ full; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct etr_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct etr_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct tmc_drvdata*) ; 

__attribute__((used)) static void FUNC4(struct tmc_drvdata *drvdata)
{
	struct etr_buf *etr_buf = drvdata->etr_buf;

	if (FUNC0(drvdata->sysfs_buf != etr_buf)) {
		FUNC2(drvdata->sysfs_buf);
		drvdata->sysfs_buf = NULL;
	} else {
		FUNC3(drvdata);
		/*
		 * Insert barrier packets at the beginning, if there was
		 * an overflow.
		 */
		if (etr_buf->full)
			FUNC1(etr_buf,
							  etr_buf->offset);
	}
}