#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeon_device {int family; int flags; TYPE_1__* mc_fw; TYPE_1__* rlc_fw; TYPE_1__* me_fw; TYPE_1__* pfp_fw; TYPE_1__* smc_fw; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_3__ {size_t size; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ARUBA_RLC_UCODE_SIZE ; 
 int /*<<< orphan*/  BARTS_SMC_UCODE_SIZE ; 
 int BTC_MC_UCODE_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CAICOS_SMC_UCODE_SIZE ; 
 int CAYMAN_MC_UCODE_SIZE ; 
 int CAYMAN_PFP_UCODE_SIZE ; 
 int CAYMAN_PM4_UCODE_SIZE ; 
 int CAYMAN_RLC_UCODE_SIZE ; 
 int /*<<< orphan*/  CAYMAN_SMC_UCODE_SIZE ; 
#define  CHIP_ARUBA 132 
#define  CHIP_BARTS 131 
#define  CHIP_CAICOS 130 
#define  CHIP_CAYMAN 129 
#define  CHIP_TURKS 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int EINVAL ; 
 int EVERGREEN_PFP_UCODE_SIZE ; 
 int EVERGREEN_PM4_UCODE_SIZE ; 
 int EVERGREEN_RLC_UCODE_SIZE ; 
 int RADEON_IS_IGP ; 
 int /*<<< orphan*/  TURKS_SMC_UCODE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 

int FUNC8(struct radeon_device *rdev)
{
	const char *chip_name;
	const char *rlc_chip_name;
	size_t pfp_req_size, me_req_size, rlc_req_size, mc_req_size;
	size_t smc_req_size = 0;
	char fw_name[30];
	int err;

	FUNC2("\n");

	switch (rdev->family) {
	case CHIP_BARTS:
		chip_name = "BARTS";
		rlc_chip_name = "BTC";
		pfp_req_size = EVERGREEN_PFP_UCODE_SIZE * 4;
		me_req_size = EVERGREEN_PM4_UCODE_SIZE * 4;
		rlc_req_size = EVERGREEN_RLC_UCODE_SIZE * 4;
		mc_req_size = BTC_MC_UCODE_SIZE * 4;
		smc_req_size = FUNC0(BARTS_SMC_UCODE_SIZE, 4);
		break;
	case CHIP_TURKS:
		chip_name = "TURKS";
		rlc_chip_name = "BTC";
		pfp_req_size = EVERGREEN_PFP_UCODE_SIZE * 4;
		me_req_size = EVERGREEN_PM4_UCODE_SIZE * 4;
		rlc_req_size = EVERGREEN_RLC_UCODE_SIZE * 4;
		mc_req_size = BTC_MC_UCODE_SIZE * 4;
		smc_req_size = FUNC0(TURKS_SMC_UCODE_SIZE, 4);
		break;
	case CHIP_CAICOS:
		chip_name = "CAICOS";
		rlc_chip_name = "BTC";
		pfp_req_size = EVERGREEN_PFP_UCODE_SIZE * 4;
		me_req_size = EVERGREEN_PM4_UCODE_SIZE * 4;
		rlc_req_size = EVERGREEN_RLC_UCODE_SIZE * 4;
		mc_req_size = BTC_MC_UCODE_SIZE * 4;
		smc_req_size = FUNC0(CAICOS_SMC_UCODE_SIZE, 4);
		break;
	case CHIP_CAYMAN:
		chip_name = "CAYMAN";
		rlc_chip_name = "CAYMAN";
		pfp_req_size = CAYMAN_PFP_UCODE_SIZE * 4;
		me_req_size = CAYMAN_PM4_UCODE_SIZE * 4;
		rlc_req_size = CAYMAN_RLC_UCODE_SIZE * 4;
		mc_req_size = CAYMAN_MC_UCODE_SIZE * 4;
		smc_req_size = FUNC0(CAYMAN_SMC_UCODE_SIZE, 4);
		break;
	case CHIP_ARUBA:
		chip_name = "ARUBA";
		rlc_chip_name = "ARUBA";
		/* pfp/me same size as CAYMAN */
		pfp_req_size = CAYMAN_PFP_UCODE_SIZE * 4;
		me_req_size = CAYMAN_PM4_UCODE_SIZE * 4;
		rlc_req_size = ARUBA_RLC_UCODE_SIZE * 4;
		mc_req_size = 0;
		break;
	default: FUNC1();
	}

	FUNC3("Loading %s Microcode\n", chip_name);

	FUNC7(fw_name, sizeof(fw_name), "radeon/%s_pfp.bin", chip_name);
	err = FUNC6(&rdev->pfp_fw, fw_name, rdev->dev);
	if (err)
		goto out;
	if (rdev->pfp_fw->size != pfp_req_size) {
		FUNC4("ni_cp: Bogus length %zu in firmware \"%s\"\n",
		       rdev->pfp_fw->size, fw_name);
		err = -EINVAL;
		goto out;
	}

	FUNC7(fw_name, sizeof(fw_name), "radeon/%s_me.bin", chip_name);
	err = FUNC6(&rdev->me_fw, fw_name, rdev->dev);
	if (err)
		goto out;
	if (rdev->me_fw->size != me_req_size) {
		FUNC4("ni_cp: Bogus length %zu in firmware \"%s\"\n",
		       rdev->me_fw->size, fw_name);
		err = -EINVAL;
	}

	FUNC7(fw_name, sizeof(fw_name), "radeon/%s_rlc.bin", rlc_chip_name);
	err = FUNC6(&rdev->rlc_fw, fw_name, rdev->dev);
	if (err)
		goto out;
	if (rdev->rlc_fw->size != rlc_req_size) {
		FUNC4("ni_rlc: Bogus length %zu in firmware \"%s\"\n",
		       rdev->rlc_fw->size, fw_name);
		err = -EINVAL;
	}

	/* no MC ucode on TN */
	if (!(rdev->flags & RADEON_IS_IGP)) {
		FUNC7(fw_name, sizeof(fw_name), "radeon/%s_mc.bin", chip_name);
		err = FUNC6(&rdev->mc_fw, fw_name, rdev->dev);
		if (err)
			goto out;
		if (rdev->mc_fw->size != mc_req_size) {
			FUNC4("ni_mc: Bogus length %zu in firmware \"%s\"\n",
			       rdev->mc_fw->size, fw_name);
			err = -EINVAL;
		}
	}

	if ((rdev->family >= CHIP_BARTS) && (rdev->family <= CHIP_CAYMAN)) {
		FUNC7(fw_name, sizeof(fw_name), "radeon/%s_smc.bin", chip_name);
		err = FUNC6(&rdev->smc_fw, fw_name, rdev->dev);
		if (err) {
			FUNC4("smc: error loading firmware \"%s\"\n", fw_name);
			FUNC5(rdev->smc_fw);
			rdev->smc_fw = NULL;
			err = 0;
		} else if (rdev->smc_fw->size != smc_req_size) {
			FUNC4("ni_mc: Bogus length %zu in firmware \"%s\"\n",
			       rdev->mc_fw->size, fw_name);
			err = -EINVAL;
		}
	}

out:
	if (err) {
		if (err != -EINVAL)
			FUNC4("ni_cp: Failed to load firmware \"%s\"\n",
			       fw_name);
		FUNC5(rdev->pfp_fw);
		rdev->pfp_fw = NULL;
		FUNC5(rdev->me_fw);
		rdev->me_fw = NULL;
		FUNC5(rdev->rlc_fw);
		rdev->rlc_fw = NULL;
		FUNC5(rdev->mc_fw);
		rdev->mc_fw = NULL;
	}
	return err;
}