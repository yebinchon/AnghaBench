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
struct kv_reset_save_regs {int gmcon_reng_execute; int gmcon_misc; void* gmcon_misc3; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int GMCON_MISC__RENG_EXECUTE_ON_REG_UPDATE_MASK ; 
 int GMCON_MISC__STCTRL_STUTTER_EN_MASK ; 
 int GMCON_RENG_EXECUTE__RENG_EXECUTE_ON_PWR_UP_MASK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmGMCON_MISC ; 
 int /*<<< orphan*/  mmGMCON_MISC3 ; 
 int /*<<< orphan*/  mmGMCON_RENG_EXECUTE ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
				   struct kv_reset_save_regs *save)
{
	save->gmcon_reng_execute = FUNC0(mmGMCON_RENG_EXECUTE);
	save->gmcon_misc = FUNC0(mmGMCON_MISC);
	save->gmcon_misc3 = FUNC0(mmGMCON_MISC3);

	FUNC1(mmGMCON_RENG_EXECUTE, save->gmcon_reng_execute &
		~GMCON_RENG_EXECUTE__RENG_EXECUTE_ON_PWR_UP_MASK);
	FUNC1(mmGMCON_MISC, save->gmcon_misc &
		~(GMCON_MISC__RENG_EXECUTE_ON_REG_UPDATE_MASK |
			GMCON_MISC__STCTRL_STUTTER_EN_MASK));
}