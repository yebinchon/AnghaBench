
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_uof_batch_init {unsigned char ae; unsigned int addr; unsigned int* value; unsigned int size; struct icp_qat_uof_batch_init* next; } ;
struct icp_qat_fw_loader_handle {int dummy; } ;


 int qat_uclo_wr_umem_by_words (struct icp_qat_fw_loader_handle*,unsigned char,unsigned int,unsigned int*,unsigned int) ;

__attribute__((used)) static void qat_uclo_batch_wr_umem(struct icp_qat_fw_loader_handle *handle,
       unsigned char ae,
       struct icp_qat_uof_batch_init
       *umem_init_header)
{
 struct icp_qat_uof_batch_init *umem_init;

 if (!umem_init_header)
  return;
 umem_init = umem_init_header->next;
 while (umem_init) {
  unsigned int addr, *value, size;

  ae = umem_init->ae;
  addr = umem_init->addr;
  value = umem_init->value;
  size = umem_init->size;
  qat_uclo_wr_umem_by_words(handle, ae, addr, value, size);
  umem_init = umem_init->next;
 }
}
