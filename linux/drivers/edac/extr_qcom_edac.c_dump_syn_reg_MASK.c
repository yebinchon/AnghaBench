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
typedef  int /*<<< orphan*/  u32 ;
struct llcc_drv_data {int dummy; } ;
struct edac_device_ctl_info {struct llcc_drv_data* pvt_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_LLCC ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_CRIT ; 
#define  LLCC_DRAM_CE 131 
#define  LLCC_DRAM_UE 130 
#define  LLCC_TRAM_CE 129 
#define  LLCC_TRAM_UE 128 
 int FUNC0 (struct llcc_drv_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct edac_device_ctl_info *edev_ctl, int err_type, u32 bank)
{
	struct llcc_drv_data *drv = edev_ctl->pvt_info;
	int ret;

	ret = FUNC0(drv, bank, err_type);
	if (ret)
		return ret;

	switch (err_type) {
	case LLCC_DRAM_CE:
		FUNC1(edev_ctl, 0, bank,
				      "LLCC Data RAM correctable Error");
		break;
	case LLCC_DRAM_UE:
		FUNC2(edev_ctl, 0, bank,
				      "LLCC Data RAM uncorrectable Error");
		break;
	case LLCC_TRAM_CE:
		FUNC1(edev_ctl, 0, bank,
				      "LLCC Tag RAM correctable Error");
		break;
	case LLCC_TRAM_UE:
		FUNC2(edev_ctl, 0, bank,
				      "LLCC Tag RAM uncorrectable Error");
		break;
	default:
		ret = -EINVAL;
		FUNC3(KERN_CRIT, EDAC_LLCC, "Unexpected error type: %d\n",
			    err_type);
	}

	return ret;
}