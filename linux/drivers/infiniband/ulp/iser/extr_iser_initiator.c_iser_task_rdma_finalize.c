
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_iser_task {int * prot; int * data; scalar_t__* dir; int sc; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 size_t ISER_DIR_IN ;
 size_t ISER_DIR_OUT ;
 int iser_dma_unmap_task_data (struct iscsi_iser_task*,int *,int ) ;
 int iser_unreg_rdma_mem (struct iscsi_iser_task*,size_t) ;
 int scsi_prot_sg_count (int ) ;

void iser_task_rdma_finalize(struct iscsi_iser_task *iser_task)
{
 int prot_count = scsi_prot_sg_count(iser_task->sc);

 if (iser_task->dir[ISER_DIR_IN]) {
  iser_unreg_rdma_mem(iser_task, ISER_DIR_IN);
  iser_dma_unmap_task_data(iser_task,
      &iser_task->data[ISER_DIR_IN],
      DMA_FROM_DEVICE);
  if (prot_count)
   iser_dma_unmap_task_data(iser_task,
       &iser_task->prot[ISER_DIR_IN],
       DMA_FROM_DEVICE);
 }

 if (iser_task->dir[ISER_DIR_OUT]) {
  iser_unreg_rdma_mem(iser_task, ISER_DIR_OUT);
  iser_dma_unmap_task_data(iser_task,
      &iser_task->data[ISER_DIR_OUT],
      DMA_TO_DEVICE);
  if (prot_count)
   iser_dma_unmap_task_data(iser_task,
       &iser_task->prot[ISER_DIR_OUT],
       DMA_TO_DEVICE);
 }
}
