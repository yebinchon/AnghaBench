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
struct TYPE_2__ {scalar_t__ rd_dat_len_mismatch_err; scalar_t__ pref_dat_len_mismatch_err; scalar_t__ cam_soft_err; scalar_t__ dma_rd_err; } ;
union lbc_int {void* value; TYPE_1__ s; } ;
typedef  void* u64 ;
struct nitrox_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 void* LBC_ELM_VF1_64_INT ; 
 void* LBC_ELM_VF65_128_INT ; 
 void* LBC_INT ; 
 void* LBC_PLM_VF1_64_INT ; 
 void* LBC_PLM_VF65_128_INT ; 
 int NR_CLUSTERS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct nitrox_device*) ; 
 void* FUNC5 (struct nitrox_device*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct nitrox_device*,void*,void*) ; 

__attribute__((used)) static void FUNC7(struct nitrox_device *ndev)
{
	union lbc_int lbc_int;
	u64 value, offset;
	int i;

	lbc_int.value = FUNC5(ndev, LBC_INT);
	FUNC3(FUNC0(ndev), "LBC_INT  0x%016llx\n", lbc_int.value);

	if (lbc_int.s.dma_rd_err) {
		for (i = 0; i < NR_CLUSTERS; i++) {
			offset = FUNC1(i);
			value = FUNC5(ndev, offset);
			FUNC6(ndev, offset, value);
			offset = FUNC2(i);
			value = FUNC5(ndev, offset);
			FUNC6(ndev, offset, value);
		}
	}

	if (lbc_int.s.cam_soft_err) {
		FUNC3(FUNC0(ndev), "CAM_SOFT_ERR, invalidating LBC\n");
		FUNC4(ndev);
	}

	if (lbc_int.s.pref_dat_len_mismatch_err) {
		offset = LBC_PLM_VF1_64_INT;
		value = FUNC5(ndev, offset);
		FUNC6(ndev, offset, value);
		offset = LBC_PLM_VF65_128_INT;
		value = FUNC5(ndev, offset);
		FUNC6(ndev, offset, value);
	}

	if (lbc_int.s.rd_dat_len_mismatch_err) {
		offset = LBC_ELM_VF1_64_INT;
		value = FUNC5(ndev, offset);
		FUNC6(ndev, offset, value);
		offset = LBC_ELM_VF65_128_INT;
		value = FUNC5(ndev, offset);
		FUNC6(ndev, offset, value);
	}
	FUNC6(ndev, LBC_INT, lbc_int.value);
}