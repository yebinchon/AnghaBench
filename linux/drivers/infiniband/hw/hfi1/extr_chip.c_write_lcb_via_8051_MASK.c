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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct hfi1_devdata {scalar_t__ icode; scalar_t__ dc8051_ver; } ;

/* Variables and functions */
 int DC_LCB_CFG_RUN ; 
 int EBUSY ; 
 int HCMD_SUCCESS ; 
 int /*<<< orphan*/  HCMD_WRITE_LCB_CSR ; 
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ; 
 scalar_t__ FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hfi1_devdata *dd, u32 addr, u64 data)
{
	u32 regno;
	int ret;

	if (dd->icode == ICODE_FUNCTIONAL_SIMULATOR ||
	    (dd->dc8051_ver < FUNC1(0, 20, 0))) {
		if (FUNC0(dd, 0) == 0) {
			FUNC4(dd, addr, data);
			FUNC3(dd, 0);
			return 0;
		}
		return -EBUSY;
	}

	/* register is an index of LCB registers: (offset - base) / 8 */
	regno = (addr - DC_LCB_CFG_RUN) >> 3;
	ret = FUNC2(dd, HCMD_WRITE_LCB_CSR, regno, &data);
	if (ret != HCMD_SUCCESS)
		return -EBUSY;
	return 0;
}