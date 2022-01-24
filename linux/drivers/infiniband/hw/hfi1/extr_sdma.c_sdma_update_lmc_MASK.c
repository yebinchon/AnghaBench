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
typedef  int u32 ;
struct sdma_engine {int dummy; } ;
struct hfi1_devdata {int num_sdma; struct sdma_engine* per_sdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_SLID ; 
 int /*<<< orphan*/  CHECK_SLID_MASK_MASK ; 
 int /*<<< orphan*/  CHECK_SLID_MASK_SHIFT ; 
 int /*<<< orphan*/  CHECK_SLID_VALUE_MASK ; 
 int /*<<< orphan*/  CHECK_SLID_VALUE_SHIFT ; 
 int /*<<< orphan*/  LINKVERB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdma_engine*,int,int) ; 

void FUNC3(struct hfi1_devdata *dd, u64 mask, u32 lid)
{
	struct sdma_engine *sde;
	int i;
	u64 sreg;

	sreg = ((mask & FUNC0(CHECK_SLID_MASK_MASK)) <<
		FUNC0(CHECK_SLID_MASK_SHIFT)) |
		(((lid & mask) & FUNC0(CHECK_SLID_VALUE_MASK)) <<
		FUNC0(CHECK_SLID_VALUE_SHIFT));

	for (i = 0; i < dd->num_sdma; i++) {
		FUNC1(LINKVERB, "SendDmaEngine[%d].SLID_CHECK = 0x%x",
			  i, (u32)sreg);
		sde = &dd->per_sdma[i];
		FUNC2(sde, FUNC0(CHECK_SLID), sreg);
	}
}