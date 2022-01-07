
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_uof_initmem {int dummy; } ;
struct icp_qat_uof_encap_obj {scalar_t__ beg_uof; int obj_hdr; } ;
struct icp_qat_uof_chunkhdr {scalar_t__ offset; } ;
struct icp_qat_uclo_init_mem_table {struct icp_qat_uof_initmem* init_mem; int entry_num; } ;


 int ICP_QAT_UOF_IMEM ;
 int memmove (int *,scalar_t__,int) ;
 struct icp_qat_uof_chunkhdr* qat_uclo_find_chunk (int ,int ,int *) ;

__attribute__((used)) static void
qat_uclo_map_initmem_table(struct icp_qat_uof_encap_obj *encap_uof_obj,
      struct icp_qat_uclo_init_mem_table *init_mem_tab)
{
 struct icp_qat_uof_chunkhdr *chunk_hdr;

 chunk_hdr = qat_uclo_find_chunk(encap_uof_obj->obj_hdr,
     ICP_QAT_UOF_IMEM, ((void*)0));
 if (chunk_hdr) {
  memmove(&init_mem_tab->entry_num, encap_uof_obj->beg_uof +
   chunk_hdr->offset, sizeof(unsigned int));
  init_mem_tab->init_mem = (struct icp_qat_uof_initmem *)
  (encap_uof_obj->beg_uof + chunk_hdr->offset +
  sizeof(unsigned int));
 }
}
