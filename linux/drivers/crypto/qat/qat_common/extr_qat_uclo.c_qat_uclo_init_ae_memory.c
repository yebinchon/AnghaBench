
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_uof_initmem {int region; } ;
struct icp_qat_fw_loader_handle {int dummy; } ;


 int EINVAL ;


 int pr_err (char*,int) ;
 int qat_uclo_init_lmem_seg (struct icp_qat_fw_loader_handle*,struct icp_qat_uof_initmem*) ;
 int qat_uclo_init_umem_seg (struct icp_qat_fw_loader_handle*,struct icp_qat_uof_initmem*) ;

__attribute__((used)) static int qat_uclo_init_ae_memory(struct icp_qat_fw_loader_handle *handle,
       struct icp_qat_uof_initmem *init_mem)
{
 switch (init_mem->region) {
 case 129:
  if (qat_uclo_init_lmem_seg(handle, init_mem))
   return -EINVAL;
  break;
 case 128:
  if (qat_uclo_init_umem_seg(handle, init_mem))
   return -EINVAL;
  break;
 default:
  pr_err("QAT: initmem region error. region type=0x%x\n",
         init_mem->region);
  return -EINVAL;
 }
 return 0;
}
