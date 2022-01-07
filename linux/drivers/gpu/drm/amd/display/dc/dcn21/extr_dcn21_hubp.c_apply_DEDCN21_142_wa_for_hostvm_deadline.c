
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct hubp {int dummy; } ;
struct dcn21_hubp {int dummy; } ;
struct _vcs_dpi_display_dlg_regs_st {scalar_t__ refcyc_per_vm_group_vblank; scalar_t__ refcyc_per_vm_req_vblank; scalar_t__ refcyc_per_vm_group_flip; scalar_t__ refcyc_per_vm_req_flip; scalar_t__ refcyc_per_pte_group_flip_c; scalar_t__ refcyc_per_meta_chunk_flip_c; } ;


 int FLIP_PARAMETERS_3 ;
 int FLIP_PARAMETERS_4 ;
 int FLIP_PARAMETERS_5 ;
 int FLIP_PARAMETERS_6 ;
 int REFCYC_PER_META_CHUNK_FLIP_C ;
 int REFCYC_PER_PTE_GROUP_FLIP_C ;
 int REFCYC_PER_VM_GROUP_FLIP ;
 int REFCYC_PER_VM_GROUP_VBLANK ;
 int REFCYC_PER_VM_REQ_FLIP ;
 int REFCYC_PER_VM_REQ_VBLANK ;
 int REG_GET (int ,int ,scalar_t__*) ;
 int REG_SET (int ,int ,int ,scalar_t__) ;
 struct dcn21_hubp* TO_DCN21_HUBP (struct hubp*) ;
 int VBLANK_PARAMETERS_5 ;
 int VBLANK_PARAMETERS_6 ;

void apply_DEDCN21_142_wa_for_hostvm_deadline(
  struct hubp *hubp,
  struct _vcs_dpi_display_dlg_regs_st *dlg_attr)
{
 struct dcn21_hubp *hubp21 = TO_DCN21_HUBP(hubp);
 uint32_t cur_value;

 REG_GET(VBLANK_PARAMETERS_5, REFCYC_PER_VM_GROUP_VBLANK, &cur_value);
 if (cur_value > dlg_attr->refcyc_per_vm_group_vblank)
  REG_SET(VBLANK_PARAMETERS_5, 0,
    REFCYC_PER_VM_GROUP_VBLANK, dlg_attr->refcyc_per_vm_group_vblank);

 REG_GET(VBLANK_PARAMETERS_6,
   REFCYC_PER_VM_REQ_VBLANK,
   &cur_value);
 if (cur_value > dlg_attr->refcyc_per_vm_req_vblank)
  REG_SET(VBLANK_PARAMETERS_6, 0,
    REFCYC_PER_VM_REQ_VBLANK, dlg_attr->refcyc_per_vm_req_vblank);

 REG_GET(FLIP_PARAMETERS_3, REFCYC_PER_VM_GROUP_FLIP, &cur_value);
 if (cur_value > dlg_attr->refcyc_per_vm_group_flip)
  REG_SET(FLIP_PARAMETERS_3, 0,
    REFCYC_PER_VM_GROUP_FLIP, dlg_attr->refcyc_per_vm_group_flip);

 REG_GET(FLIP_PARAMETERS_4, REFCYC_PER_VM_REQ_FLIP, &cur_value);
 if (cur_value > dlg_attr->refcyc_per_vm_req_flip)
  REG_SET(FLIP_PARAMETERS_4, 0,
     REFCYC_PER_VM_REQ_FLIP, dlg_attr->refcyc_per_vm_req_flip);

 REG_SET(FLIP_PARAMETERS_5, 0,
   REFCYC_PER_PTE_GROUP_FLIP_C, dlg_attr->refcyc_per_pte_group_flip_c);
 REG_SET(FLIP_PARAMETERS_6, 0,
   REFCYC_PER_META_CHUNK_FLIP_C, dlg_attr->refcyc_per_meta_chunk_flip_c);
}
