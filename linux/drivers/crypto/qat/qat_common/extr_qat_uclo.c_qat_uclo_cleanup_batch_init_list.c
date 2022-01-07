
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_uof_batch_init {struct icp_qat_uof_batch_init* next; } ;
struct icp_qat_fw_loader_handle {int dummy; } ;


 int kfree (struct icp_qat_uof_batch_init*) ;

__attribute__((used)) static void
qat_uclo_cleanup_batch_init_list(struct icp_qat_fw_loader_handle *handle,
     struct icp_qat_uof_batch_init **base)
{
 struct icp_qat_uof_batch_init *umem_init;

 umem_init = *base;
 while (umem_init) {
  struct icp_qat_uof_batch_init *pre;

  pre = umem_init;
  umem_init = umem_init->next;
  kfree(pre);
 }
 *base = ((void*)0);
}
