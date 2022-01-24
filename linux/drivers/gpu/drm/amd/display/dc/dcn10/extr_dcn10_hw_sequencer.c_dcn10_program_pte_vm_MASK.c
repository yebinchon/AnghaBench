#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {TYPE_3__ member_0; } ;
struct vm_system_aperture_param {TYPE_2__ member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {TYPE_5__ member_0; } ;
struct vm_context0_param {TYPE_4__ member_0; } ;
struct hubp {TYPE_1__* funcs; } ;
struct dcn10_hubp {int dummy; } ;
struct dce_hwseq {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* hubp_set_vm_context0_settings ) (struct hubp*,struct vm_context0_param*) ;int /*<<< orphan*/  (* hubp_set_vm_system_aperture_settings ) (struct hubp*,struct vm_system_aperture_param*) ;} ;

/* Variables and functions */
 struct dcn10_hubp* FUNC0 (struct hubp*) ; 
 int /*<<< orphan*/  FUNC1 (struct dcn10_hubp*,struct vm_context0_param*,struct dce_hwseq*) ; 
 int /*<<< orphan*/  FUNC2 (struct dcn10_hubp*,struct vm_system_aperture_param*,struct dce_hwseq*) ; 
 int /*<<< orphan*/  FUNC3 (struct hubp*,struct vm_system_aperture_param*) ; 
 int /*<<< orphan*/  FUNC4 (struct hubp*,struct vm_context0_param*) ; 

void FUNC5(struct dce_hwseq *hws, struct hubp *hubp)
{
	struct dcn10_hubp *hubp1 = FUNC0(hubp);
	struct vm_system_aperture_param apt = { {{ 0 } } };
	struct vm_context0_param vm0 = { { { 0 } } };

	FUNC2(hubp1, &apt, hws);
	FUNC1(hubp1, &vm0, hws);

	hubp->funcs->hubp_set_vm_system_aperture_settings(hubp, &apt);
	hubp->funcs->hubp_set_vm_context0_settings(hubp, &vm0);
}