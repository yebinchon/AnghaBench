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
typedef  unsigned long u32 ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int /*<<< orphan*/  pci_dev_16_2_fsb_err_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FERR_GLOBAL_HI ; 
 int /*<<< orphan*/  FERR_GLOBAL_LO ; 
 char* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  KERN_EMERG ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  ferr_global_hi_name ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  ferr_global_lo_name ; 
 unsigned long FUNC4 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mem_ctl_info*,int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long) ; 

__attribute__((used)) static void FUNC9(struct mem_ctl_info *mci)
{
	struct i7300_pvt *pvt;
	u32 errnum, error_reg;
	unsigned long errors;
	const char *specific;
	bool is_fatal;

	pvt = mci->pvt_info;

	/* read in the 1st FATAL error register */
	FUNC6(pvt->pci_dev_16_2_fsb_err_regs,
			      FERR_GLOBAL_HI, &error_reg);
	if (FUNC8(error_reg)) {
		errors = error_reg;
		errnum = FUNC4(&errors,
					FUNC0(ferr_global_hi_name));
		specific = FUNC1(ferr_global_hi_name, errnum);
		is_fatal = FUNC2(errnum);

		/* Clear the error bit */
		FUNC7(pvt->pci_dev_16_2_fsb_err_regs,
				       FERR_GLOBAL_HI, error_reg);

		goto error_global;
	}

	FUNC6(pvt->pci_dev_16_2_fsb_err_regs,
			      FERR_GLOBAL_LO, &error_reg);
	if (FUNC8(error_reg)) {
		errors = error_reg;
		errnum = FUNC4(&errors,
					FUNC0(ferr_global_lo_name));
		specific = FUNC1(ferr_global_lo_name, errnum);
		is_fatal = FUNC3(errnum);

		/* Clear the error bit */
		FUNC7(pvt->pci_dev_16_2_fsb_err_regs,
				       FERR_GLOBAL_LO, error_reg);

		goto error_global;
	}
	return;

error_global:
	FUNC5(mci, KERN_EMERG, "%s misc error: %s\n",
			is_fatal ? "Fatal" : "NOT fatal", specific);
}