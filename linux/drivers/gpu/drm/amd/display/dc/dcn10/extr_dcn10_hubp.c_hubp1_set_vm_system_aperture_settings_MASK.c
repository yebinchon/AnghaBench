#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int quad_part; } ;
struct TYPE_6__ {int quad_part; } ;
struct TYPE_5__ {int quad_part; } ;
struct vm_system_aperture_param {TYPE_3__ sys_high; TYPE_2__ sys_low; TYPE_1__ sys_default; } ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;
struct TYPE_8__ {int quad_part; int /*<<< orphan*/  low_part; int /*<<< orphan*/  high_part; } ;
typedef  TYPE_4__ PHYSICAL_ADDRESS_LOC ;

/* Variables and functions */
 int /*<<< orphan*/  DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB ; 
 int /*<<< orphan*/  DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB ; 
 int /*<<< orphan*/  DCN_VM_SYSTEM_APERTURE_HIGH_ADDR_LSB ; 
 int /*<<< orphan*/  DCN_VM_SYSTEM_APERTURE_HIGH_ADDR_MSB ; 
 int /*<<< orphan*/  DCN_VM_SYSTEM_APERTURE_LOW_ADDR_LSB ; 
 int /*<<< orphan*/  DCN_VM_SYSTEM_APERTURE_LOW_ADDR_MSB ; 
 int /*<<< orphan*/  MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB ; 
 int /*<<< orphan*/  MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB ; 
 int /*<<< orphan*/  MC_VM_SYSTEM_APERTURE_DEFAULT_SYSTEM ; 
 int /*<<< orphan*/  MC_VM_SYSTEM_APERTURE_HIGH_ADDR_LSB ; 
 int /*<<< orphan*/  MC_VM_SYSTEM_APERTURE_HIGH_ADDR_MSB ; 
 int /*<<< orphan*/  MC_VM_SYSTEM_APERTURE_LOW_ADDR_LSB ; 
 int /*<<< orphan*/  MC_VM_SYSTEM_APERTURE_LOW_ADDR_MSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dcn10_hubp* FUNC2 (struct hubp*) ; 
 int /*<<< orphan*/  aperture_default_system ; 

__attribute__((used)) static void FUNC3(struct hubp *hubp,
		struct vm_system_aperture_param *apt)
{
	struct dcn10_hubp *hubp1 = FUNC2(hubp);
	PHYSICAL_ADDRESS_LOC mc_vm_apt_default;
	PHYSICAL_ADDRESS_LOC mc_vm_apt_low;
	PHYSICAL_ADDRESS_LOC mc_vm_apt_high;

	mc_vm_apt_default.quad_part = apt->sys_default.quad_part >> 12;
	mc_vm_apt_low.quad_part = apt->sys_low.quad_part >> 12;
	mc_vm_apt_high.quad_part = apt->sys_high.quad_part >> 12;

	FUNC1(DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, 0,
		MC_VM_SYSTEM_APERTURE_DEFAULT_SYSTEM, aperture_default_system, /* 1 = system physical memory */
		MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, mc_vm_apt_default.high_part);
	FUNC0(DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, 0,
		MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, mc_vm_apt_default.low_part);

	FUNC0(DCN_VM_SYSTEM_APERTURE_LOW_ADDR_MSB, 0,
			MC_VM_SYSTEM_APERTURE_LOW_ADDR_MSB, mc_vm_apt_low.high_part);
	FUNC0(DCN_VM_SYSTEM_APERTURE_LOW_ADDR_LSB, 0,
			MC_VM_SYSTEM_APERTURE_LOW_ADDR_LSB, mc_vm_apt_low.low_part);

	FUNC0(DCN_VM_SYSTEM_APERTURE_HIGH_ADDR_MSB, 0,
			MC_VM_SYSTEM_APERTURE_HIGH_ADDR_MSB, mc_vm_apt_high.high_part);
	FUNC0(DCN_VM_SYSTEM_APERTURE_HIGH_ADDR_LSB, 0,
			MC_VM_SYSTEM_APERTURE_HIGH_ADDR_LSB, mc_vm_apt_high.low_part);
}