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
typedef  int u64 ;
struct hfi1_devdata {int* gi_mask; } ;

/* Variables and functions */
 scalar_t__ CCE_INT_MAP ; 
 int CCE_NUM_INT_CSRS ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct hfi1_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,scalar_t__,int) ; 

void FUNC4(struct hfi1_devdata *dd, int isrc, int msix_intr)
{
	u64 reg;
	int m, n;

	/* clear from the handled mask of the general interrupt */
	m = isrc / 64;
	n = isrc % 64;
	if (FUNC1(m < CCE_NUM_INT_CSRS)) {
		dd->gi_mask[m] &= ~((u64)1 << n);
	} else {
		FUNC0(dd, "remap interrupt err\n");
		return;
	}

	/* direct the chip source to the given MSI-X interrupt */
	m = isrc / 8;
	n = isrc % 8;
	reg = FUNC2(dd, CCE_INT_MAP + (8 * m));
	reg &= ~((u64)0xff << (8 * n));
	reg |= ((u64)msix_intr & 0xff) << (8 * n);
	FUNC3(dd, CCE_INT_MAP + (8 * m), reg);
}