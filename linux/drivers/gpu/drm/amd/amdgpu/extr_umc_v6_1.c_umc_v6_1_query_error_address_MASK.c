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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct ras_err_data {int* err_addr; size_t err_addr_cnt; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  CECC ; 
 int /*<<< orphan*/  ErrorAddr ; 
 int /*<<< orphan*/  LSB ; 
 int /*<<< orphan*/  MCA_UMC_UMC0_MCUMC_ADDRT0 ; 
 int /*<<< orphan*/  MCA_UMC_UMC0_MCUMC_STATUST0 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UECC ; 
 int /*<<< orphan*/  UMC ; 
 int /*<<< orphan*/  Val ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  mmMCA_UMC_UMC0_MCUMC_STATUST0 ; 
 scalar_t__ smnMCA_UMC0_MCUMC_ADDRT0 ; 

__attribute__((used)) static void FUNC8(struct amdgpu_device *adev,
					 struct ras_err_data *err_data,
					 uint32_t umc_reg_offset, uint32_t channel_index)
{
	uint32_t lsb, mc_umc_status_addr;
	uint64_t mc_umc_status, err_addr;

	mc_umc_status_addr =
		FUNC6(UMC, 0, mmMCA_UMC_UMC0_MCUMC_STATUST0);

	/* skip error address process if -ENOMEM */
	if (!err_data->err_addr) {
		/* clear umc status */
		FUNC7(mc_umc_status_addr + umc_reg_offset, 0x0ULL);
		return;
	}

	mc_umc_status = FUNC5(mc_umc_status_addr + umc_reg_offset);

	/* calculate error address if ue/ce error is detected */
	if (FUNC3(mc_umc_status, MCA_UMC_UMC0_MCUMC_STATUST0, Val) == 1 &&
	    (FUNC3(mc_umc_status, MCA_UMC_UMC0_MCUMC_STATUST0, UECC) == 1 ||
	    FUNC3(mc_umc_status, MCA_UMC_UMC0_MCUMC_STATUST0, CECC) == 1)) {
		err_addr = FUNC4(smnMCA_UMC0_MCUMC_ADDRT0 + umc_reg_offset * 4);

		/* the lowest lsb bits should be ignored */
		lsb = FUNC3(err_addr, MCA_UMC_UMC0_MCUMC_ADDRT0, LSB);
		err_addr = FUNC3(err_addr, MCA_UMC_UMC0_MCUMC_ADDRT0, ErrorAddr);
		err_addr &= ~((0x1ULL << lsb) - 1);

		/* translate umc channel address to soc pa, 3 parts are included */
		err_data->err_addr[err_data->err_addr_cnt] =
						FUNC1(err_addr) |
						FUNC0(channel_index) |
						FUNC2(err_addr);

		err_data->err_addr_cnt++;
	}

	/* clear umc status */
	FUNC7(mc_umc_status_addr + umc_reg_offset, 0x0ULL);
}