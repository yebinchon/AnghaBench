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
typedef  scalar_t__ uint32_t ;
struct hubp {int dummy; } ;
struct dcn21_hubp {int dummy; } ;
struct _vcs_dpi_display_dlg_regs_st {scalar_t__ refcyc_per_vm_group_vblank; scalar_t__ refcyc_per_vm_req_vblank; scalar_t__ refcyc_per_vm_group_flip; scalar_t__ refcyc_per_vm_req_flip; scalar_t__ refcyc_per_pte_group_flip_c; scalar_t__ refcyc_per_meta_chunk_flip_c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLIP_PARAMETERS_3 ; 
 int /*<<< orphan*/  FLIP_PARAMETERS_4 ; 
 int /*<<< orphan*/  FLIP_PARAMETERS_5 ; 
 int /*<<< orphan*/  FLIP_PARAMETERS_6 ; 
 int /*<<< orphan*/  REFCYC_PER_META_CHUNK_FLIP_C ; 
 int /*<<< orphan*/  REFCYC_PER_PTE_GROUP_FLIP_C ; 
 int /*<<< orphan*/  REFCYC_PER_VM_GROUP_FLIP ; 
 int /*<<< orphan*/  REFCYC_PER_VM_GROUP_VBLANK ; 
 int /*<<< orphan*/  REFCYC_PER_VM_REQ_FLIP ; 
 int /*<<< orphan*/  REFCYC_PER_VM_REQ_VBLANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct dcn21_hubp* FUNC2 (struct hubp*) ; 
 int /*<<< orphan*/  VBLANK_PARAMETERS_5 ; 
 int /*<<< orphan*/  VBLANK_PARAMETERS_6 ; 

void FUNC3(
		struct hubp *hubp,
		struct _vcs_dpi_display_dlg_regs_st *dlg_attr)
{
	struct dcn21_hubp *hubp21 = FUNC2(hubp);
	uint32_t cur_value;

	FUNC0(VBLANK_PARAMETERS_5, REFCYC_PER_VM_GROUP_VBLANK, &cur_value);
	if (cur_value > dlg_attr->refcyc_per_vm_group_vblank)
		FUNC1(VBLANK_PARAMETERS_5, 0,
				REFCYC_PER_VM_GROUP_VBLANK, dlg_attr->refcyc_per_vm_group_vblank);

	FUNC0(VBLANK_PARAMETERS_6,
			REFCYC_PER_VM_REQ_VBLANK,
			&cur_value);
	if (cur_value > dlg_attr->refcyc_per_vm_req_vblank)
		FUNC1(VBLANK_PARAMETERS_6, 0,
				REFCYC_PER_VM_REQ_VBLANK, dlg_attr->refcyc_per_vm_req_vblank);

	FUNC0(FLIP_PARAMETERS_3, REFCYC_PER_VM_GROUP_FLIP, &cur_value);
	if (cur_value > dlg_attr->refcyc_per_vm_group_flip)
		FUNC1(FLIP_PARAMETERS_3, 0,
				REFCYC_PER_VM_GROUP_FLIP, dlg_attr->refcyc_per_vm_group_flip);

	FUNC0(FLIP_PARAMETERS_4, REFCYC_PER_VM_REQ_FLIP, &cur_value);
	if (cur_value > dlg_attr->refcyc_per_vm_req_flip)
		FUNC1(FLIP_PARAMETERS_4, 0,
					REFCYC_PER_VM_REQ_FLIP, dlg_attr->refcyc_per_vm_req_flip);

	FUNC1(FLIP_PARAMETERS_5, 0,
			REFCYC_PER_PTE_GROUP_FLIP_C, dlg_attr->refcyc_per_pte_group_flip_c);
	FUNC1(FLIP_PARAMETERS_6, 0,
			REFCYC_PER_META_CHUNK_FLIP_C, dlg_attr->refcyc_per_meta_chunk_flip_c);
}