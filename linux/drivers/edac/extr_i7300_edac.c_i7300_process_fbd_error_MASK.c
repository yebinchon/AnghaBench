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
typedef  int /*<<< orphan*/  u16 ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int /*<<< orphan*/  tmp_prt_buffer; int /*<<< orphan*/  pci_dev_16_1_fsb_addr_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FERR_FAT_FBD ; 
 unsigned long FERR_FAT_FBD_ERR_MASK ; 
 int /*<<< orphan*/  FERR_NF_FBD ; 
 unsigned long FERR_NF_FBD_ERR_MASK ; 
 char* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  HW_EVENT_ERR_CORRECTED ; 
 int /*<<< orphan*/  HW_EVENT_ERR_FATAL ; 
 int /*<<< orphan*/  NRECMEMA ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NRECMEMB ; 
 unsigned int FUNC7 (unsigned long) ; 
 int FUNC8 (unsigned long) ; 
 unsigned int FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RECMEMA ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RECMEMB ; 
 unsigned int FUNC12 (unsigned long) ; 
 int FUNC13 (unsigned long) ; 
 unsigned int FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  REDMEMA ; 
 int /*<<< orphan*/  REDMEMB ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct mem_ctl_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned int,unsigned int,unsigned int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ferr_fat_fbd_name ; 
 int /*<<< orphan*/  ferr_nf_fbd_name ; 
 unsigned long FUNC16 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,unsigned long,char const*) ; 
 scalar_t__ FUNC21 (unsigned long) ; 

__attribute__((used)) static void FUNC22(struct mem_ctl_info *mci)
{
	struct i7300_pvt *pvt;
	u32 errnum, value, error_reg;
	u16 val16;
	unsigned branch, channel, bank, rank, cas, ras;
	u32 syndrome;

	unsigned long errors;
	const char *specific;
	bool is_wr;

	pvt = mci->pvt_info;

	/* read in the 1st FATAL error register */
	FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
			      FERR_FAT_FBD, &error_reg);
	if (FUNC21(error_reg & FERR_FAT_FBD_ERR_MASK)) {
		errors = error_reg & FERR_FAT_FBD_ERR_MASK ;
		errnum = FUNC16(&errors,
					FUNC0(ferr_fat_fbd_name));
		specific = FUNC2(ferr_fat_fbd_name, errnum);
		branch = (FUNC3(error_reg) == 2) ? 1 : 0;

		FUNC18(pvt->pci_dev_16_1_fsb_addr_map,
				     NRECMEMA, &val16);
		bank = FUNC5(val16);
		rank = FUNC6(val16);

		FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
				NRECMEMB, &value);
		is_wr = FUNC8(value);
		cas = FUNC7(value);
		ras = FUNC9(value);

		/* Clean the error register */
		FUNC19(pvt->pci_dev_16_1_fsb_addr_map,
				FERR_FAT_FBD, error_reg);

		FUNC20(pvt->tmp_prt_buffer, PAGE_SIZE,
			 "Bank=%d RAS=%d CAS=%d Err=0x%lx (%s))",
			 bank, ras, cas, errors, specific);

		FUNC15(HW_EVENT_ERR_FATAL, mci, 1, 0, 0, 0,
				     branch, -1, rank,
				     is_wr ? "Write error" : "Read error",
				     pvt->tmp_prt_buffer);

	}

	/* read in the 1st NON-FATAL error register */
	FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
			      FERR_NF_FBD, &error_reg);
	if (FUNC21(error_reg & FERR_NF_FBD_ERR_MASK)) {
		errors = error_reg & FERR_NF_FBD_ERR_MASK;
		errnum = FUNC16(&errors,
					FUNC0(ferr_nf_fbd_name));
		specific = FUNC2(ferr_nf_fbd_name, errnum);
		branch = (FUNC4(error_reg) == 2) ? 1 : 0;

		FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
			REDMEMA, &syndrome);

		FUNC18(pvt->pci_dev_16_1_fsb_addr_map,
				     RECMEMA, &val16);
		bank = FUNC10(val16);
		rank = FUNC11(val16);

		FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
				RECMEMB, &value);
		is_wr = FUNC13(value);
		cas = FUNC12(value);
		ras = FUNC14(value);

		FUNC17(pvt->pci_dev_16_1_fsb_addr_map,
				     REDMEMB, &value);
		channel = (branch << 1);

		/* Second channel ? */
		channel += !!(value & FUNC1(17));

		/* Clear the error bit */
		FUNC19(pvt->pci_dev_16_1_fsb_addr_map,
				FERR_NF_FBD, error_reg);

		/* Form out message */
		FUNC20(pvt->tmp_prt_buffer, PAGE_SIZE,
			 "DRAM-Bank=%d RAS=%d CAS=%d, Err=0x%lx (%s))",
			 bank, ras, cas, errors, specific);

		FUNC15(HW_EVENT_ERR_CORRECTED, mci, 1, 0, 0,
				     syndrome,
				     branch >> 1, channel % 2, rank,
				     is_wr ? "Write error" : "Read error",
				     pvt->tmp_prt_buffer);
	}
	return;
}