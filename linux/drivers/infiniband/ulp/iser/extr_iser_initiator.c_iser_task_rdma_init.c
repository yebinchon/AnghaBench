
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_mem_reg {int dummy; } ;
struct iscsi_iser_task {int * rdma_reg; TYPE_2__* prot; TYPE_1__* data; scalar_t__* dir; int status; } ;
struct TYPE_4__ {scalar_t__ dma_nents; scalar_t__ data_len; } ;
struct TYPE_3__ {scalar_t__ data_len; } ;


 size_t ISER_DIR_IN ;
 size_t ISER_DIR_OUT ;
 int ISER_TASK_STATUS_INIT ;
 int memset (int *,int ,int) ;

void iser_task_rdma_init(struct iscsi_iser_task *iser_task)

{
 iser_task->status = ISER_TASK_STATUS_INIT;

 iser_task->dir[ISER_DIR_IN] = 0;
 iser_task->dir[ISER_DIR_OUT] = 0;

 iser_task->data[ISER_DIR_IN].data_len = 0;
 iser_task->data[ISER_DIR_OUT].data_len = 0;

 iser_task->prot[ISER_DIR_IN].data_len = 0;
 iser_task->prot[ISER_DIR_OUT].data_len = 0;

 iser_task->prot[ISER_DIR_IN].dma_nents = 0;
 iser_task->prot[ISER_DIR_OUT].dma_nents = 0;

 memset(&iser_task->rdma_reg[ISER_DIR_IN], 0,
        sizeof(struct iser_mem_reg));
 memset(&iser_task->rdma_reg[ISER_DIR_OUT], 0,
        sizeof(struct iser_mem_reg));
}
