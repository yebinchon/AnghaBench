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
struct qib_devdata {unsigned int piobcnt2k; unsigned int piobcnt4k; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_VL15_BUFS ; 
 int /*<<< orphan*/  TXCHK_CHG_TYPE_KERN ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct qib_devdata *dd)
{
	unsigned vl15bufs;

	vl15bufs = dd->piobcnt2k + dd->piobcnt4k;
	FUNC0(dd, vl15bufs, NUM_VL15_BUFS,
			       TXCHK_CHG_TYPE_KERN, NULL);
}