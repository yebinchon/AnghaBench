
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_uof_initmem {int dummy; } ;
struct icp_qat_uclo_objhandle {int * lm_init_tab; } ;
struct icp_qat_fw_loader_handle {struct icp_qat_uclo_objhandle* obj_handle; } ;


 int EINVAL ;
 int ICP_QAT_UCLO_MAX_LMEM_REG ;
 scalar_t__ qat_uclo_create_batch_init_list (struct icp_qat_fw_loader_handle*,struct icp_qat_uof_initmem*,unsigned int,int *) ;
 scalar_t__ qat_uclo_fetch_initmem_ae (struct icp_qat_fw_loader_handle*,struct icp_qat_uof_initmem*,int ,unsigned int*) ;

__attribute__((used)) static int qat_uclo_init_lmem_seg(struct icp_qat_fw_loader_handle *handle,
      struct icp_qat_uof_initmem *init_mem)
{
 struct icp_qat_uclo_objhandle *obj_handle = handle->obj_handle;
 unsigned int ae;

 if (qat_uclo_fetch_initmem_ae(handle, init_mem,
          ICP_QAT_UCLO_MAX_LMEM_REG, &ae))
  return -EINVAL;
 if (qat_uclo_create_batch_init_list(handle, init_mem, ae,
         &obj_handle->lm_init_tab[ae]))
  return -EINVAL;
 return 0;
}
