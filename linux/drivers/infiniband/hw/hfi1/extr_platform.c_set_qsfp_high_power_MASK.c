#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__* cache; } ;
struct hfi1_pportdata {TYPE_2__* dd; TYPE_1__ qsfp_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  hfi1_id; } ;

/* Variables and functions */
 int EIO ; 
 size_t QSFP_MOD_PWR_OFFS ; 
 scalar_t__ QSFP_POWER_CLASS_1 ; 
 scalar_t__ QSFP_POWER_CLASS_4 ; 
 size_t QSFP_PWR_CTRL_BYTE_OFFS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct hfi1_pportdata*,int /*<<< orphan*/ ,size_t,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC3(struct hfi1_pportdata *ppd)
{
	u8 cable_power_class = 0, power_ctrl_byte = 0;
	u8 *cache = ppd->qsfp_info.cache;
	int ret;

	cable_power_class = FUNC0(cache[QSFP_MOD_PWR_OFFS]);

	if (cable_power_class > QSFP_POWER_CLASS_1) {
		power_ctrl_byte = cache[QSFP_PWR_CTRL_BYTE_OFFS];

		power_ctrl_byte |= 1;
		power_ctrl_byte &= ~(0x2);

		ret = FUNC2(ppd, ppd->dd->hfi1_id,
				 QSFP_PWR_CTRL_BYTE_OFFS,
				 &power_ctrl_byte, 1);
		if (ret != 1)
			return -EIO;

		if (cable_power_class > QSFP_POWER_CLASS_4) {
			power_ctrl_byte |= (1 << 2);
			ret = FUNC2(ppd, ppd->dd->hfi1_id,
					 QSFP_PWR_CTRL_BYTE_OFFS,
					 &power_ctrl_byte, 1);
			if (ret != 1)
				return -EIO;
		}

		/* SFF 8679 rev 1.7 LPMode Deassert time */
		FUNC1(300);
	}
	return 0;
}