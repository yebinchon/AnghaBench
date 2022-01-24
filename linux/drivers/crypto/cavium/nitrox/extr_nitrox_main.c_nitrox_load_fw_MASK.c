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
union ucd_core_eid_ucode_block_num {unsigned long long value; int ucode_len; scalar_t__ ucode_blk; } ;
union aqm_grp_execmsk_lo {int exec_0_to_39; unsigned long long value; } ;
union aqm_grp_execmsk_hi {int exec_40_to_79; unsigned long long value; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct ucode {int /*<<< orphan*/  version; int /*<<< orphan*/ * code; int /*<<< orphan*/  code_size; } ;
struct TYPE_2__ {char** fw_name; int se_cores; int ae_cores; } ;
struct nitrox_device {TYPE_1__ hw; } ;
struct firmware {scalar_t__ data; } ;

/* Variables and functions */
 char* AE_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int CNN55XX_MAX_UCODE_SIZE ; 
 int CNN55XX_UCD_BLOCK_SIZE ; 
 int /*<<< orphan*/  DEFAULT_AE_GROUP ; 
 int /*<<< orphan*/  DEFAULT_SE_GROUP ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* SE_FW ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int VERSION_LEN ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nitrox_device*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (struct firmware const*) ; 
 int FUNC12 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nitrox_device*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(struct nitrox_device *ndev)
{
	const struct firmware *fw;
	const char *fw_name;
	struct ucode *ucode;
	u64 *ucode_data;
	u64 offset;
	union ucd_core_eid_ucode_block_num core_2_eid_val;
	union aqm_grp_execmsk_lo aqm_grp_execmask_lo;
	union aqm_grp_execmsk_hi aqm_grp_execmask_hi;
	u32 ucode_size;
	int ret, i = 0;

	fw_name = SE_FW;
	FUNC8(FUNC2(ndev), "Loading firmware \"%s\"\n", fw_name);

	ret = FUNC12(&fw, fw_name, FUNC2(ndev));
	if (ret < 0) {
		FUNC7(FUNC2(ndev), "failed to get firmware %s\n", fw_name);
		return ret;
	}

	ucode = (struct ucode *)fw->data;

	ucode_size = FUNC6(ucode->code_size) * 2;
	if (!ucode_size || ucode_size > CNN55XX_MAX_UCODE_SIZE) {
		FUNC7(FUNC2(ndev), "Invalid ucode size: %u for firmware %s\n",
			ucode_size, fw_name);
		FUNC11(fw);
		return -EINVAL;
	}
	ucode_data = ucode->code;

	/* copy the firmware version */
	FUNC9(&ndev->hw.fw_name[0][0], ucode->version, (VERSION_LEN - 2));
	ndev->hw.fw_name[0][VERSION_LEN - 1] = '\0';

	/* Load SE Firmware on UCD Block 0 */
	FUNC13(ndev, ucode_size, ucode_data, 0);

	FUNC11(fw);

	/* put all SE cores in DEFAULT_SE_GROUP */
	offset = FUNC3(DEFAULT_SE_GROUP);
	FUNC10(ndev, offset, (~0ULL));

	/* write block number and firmware length
	 * bit:<2:0> block number
	 * bit:3 is set SE uses 32KB microcode
	 * bit:3 is clear SE uses 64KB microcode
	 */
	core_2_eid_val.value = 0ULL;
	core_2_eid_val.ucode_blk = 0;
	if (ucode_size <= CNN55XX_UCD_BLOCK_SIZE)
		core_2_eid_val.ucode_len = 1;
	else
		core_2_eid_val.ucode_len = 0;

	for (i = 0; i < ndev->hw.se_cores; i++) {
		offset = FUNC5(i);
		FUNC10(ndev, offset, core_2_eid_val.value);
	}


	fw_name = AE_FW;
	FUNC8(FUNC2(ndev), "Loading firmware \"%s\"\n", fw_name);

	ret = FUNC12(&fw, fw_name, FUNC2(ndev));
	if (ret < 0) {
		FUNC7(FUNC2(ndev), "failed to get firmware %s\n", fw_name);
		return ret;
	}

	ucode = (struct ucode *)fw->data;

	ucode_size = FUNC6(ucode->code_size) * 2;
	if (!ucode_size || ucode_size > CNN55XX_MAX_UCODE_SIZE) {
		FUNC7(FUNC2(ndev), "Invalid ucode size: %u for firmware %s\n",
			ucode_size, fw_name);
		FUNC11(fw);
		return -EINVAL;
	}
	ucode_data = ucode->code;

	/* copy the firmware version */
	FUNC9(&ndev->hw.fw_name[1][0], ucode->version, (VERSION_LEN - 2));
	ndev->hw.fw_name[1][VERSION_LEN - 1] = '\0';

	/* Load AE Firmware on UCD Block 2 */
	FUNC13(ndev, ucode_size, ucode_data, 2);

	FUNC11(fw);

	/* put all AE cores in DEFAULT_AE_GROUP */
	offset = FUNC1(DEFAULT_AE_GROUP);
	aqm_grp_execmask_lo.exec_0_to_39 = 0xFFFFFFFFFFULL;
	FUNC10(ndev, offset, aqm_grp_execmask_lo.value);
	offset = FUNC0(DEFAULT_AE_GROUP);
	aqm_grp_execmask_hi.exec_40_to_79 = 0xFFFFFFFFFFULL;
	FUNC10(ndev, offset, aqm_grp_execmask_hi.value);

	/* write block number and firmware length
	 * bit:<2:0> block number
	 * bit:3 is set SE uses 32KB microcode
	 * bit:3 is clear SE uses 64KB microcode
	 */
	core_2_eid_val.value = 0ULL;
	core_2_eid_val.ucode_blk = 0;
	if (ucode_size <= CNN55XX_UCD_BLOCK_SIZE)
		core_2_eid_val.ucode_len = 1;
	else
		core_2_eid_val.ucode_len = 0;

	for (i = 0; i < ndev->hw.ae_cores; i++) {
		offset = FUNC4(i);
		FUNC10(ndev, offset, core_2_eid_val.value);
	}

	return 0;
}