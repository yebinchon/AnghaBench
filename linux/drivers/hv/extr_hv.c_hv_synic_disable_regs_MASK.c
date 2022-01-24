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
union hv_synic_sint {int masked; int /*<<< orphan*/  as_uint64; } ;
union hv_synic_simp {int /*<<< orphan*/  as_uint64; scalar_t__ base_simp_gpa; scalar_t__ simp_enabled; } ;
union hv_synic_siefp {int /*<<< orphan*/  as_uint64; scalar_t__ base_siefp_gpa; scalar_t__ siefp_enabled; } ;
union hv_synic_scontrol {int /*<<< orphan*/  as_uint64; scalar_t__ enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMBUS_MESSAGE_SINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(unsigned int cpu)
{
	union hv_synic_sint shared_sint;
	union hv_synic_simp simp;
	union hv_synic_siefp siefp;
	union hv_synic_scontrol sctrl;

	FUNC3(VMBUS_MESSAGE_SINT, shared_sint.as_uint64);

	shared_sint.masked = 1;

	/* Need to correctly cleanup in the case of SMP!!! */
	/* Disable the interrupt */
	FUNC7(VMBUS_MESSAGE_SINT, shared_sint.as_uint64);

	FUNC1(simp.as_uint64);
	simp.simp_enabled = 0;
	simp.base_simp_gpa = 0;

	FUNC5(simp.as_uint64);

	FUNC0(siefp.as_uint64);
	siefp.siefp_enabled = 0;
	siefp.base_siefp_gpa = 0;

	FUNC4(siefp.as_uint64);

	/* Disable the global synic bit */
	FUNC2(sctrl.as_uint64);
	sctrl.enable = 0;
	FUNC6(sctrl.as_uint64);
}