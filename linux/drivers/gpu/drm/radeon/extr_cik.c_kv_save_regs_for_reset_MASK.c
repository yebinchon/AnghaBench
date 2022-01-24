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
struct radeon_device {int dummy; } ;
struct kv_reset_save_regs {int gmcon_reng_execute; int gmcon_misc; void* gmcon_misc3; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMCON_MISC ; 
 int /*<<< orphan*/  GMCON_MISC3 ; 
 int /*<<< orphan*/  GMCON_RENG_EXECUTE ; 
 int RENG_EXECUTE_ON_PWR_UP ; 
 int RENG_EXECUTE_ON_REG_UPDATE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int STCTRL_STUTTER_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
				   struct kv_reset_save_regs *save)
{
	save->gmcon_reng_execute = FUNC0(GMCON_RENG_EXECUTE);
	save->gmcon_misc = FUNC0(GMCON_MISC);
	save->gmcon_misc3 = FUNC0(GMCON_MISC3);

	FUNC1(GMCON_RENG_EXECUTE, save->gmcon_reng_execute & ~RENG_EXECUTE_ON_PWR_UP);
	FUNC1(GMCON_MISC, save->gmcon_misc & ~(RENG_EXECUTE_ON_REG_UPDATE |
						STCTRL_STUTTER_EN));
}