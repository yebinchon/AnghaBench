
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_mem_reg {int * mem_h; } ;
struct iscsi_iser_task {struct iser_mem_reg* rdma_reg; } ;
struct ib_pool_fmr {int dummy; } ;
typedef enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;


 int ib_fmr_pool_unmap (struct ib_pool_fmr*) ;
 int iser_dbg (char*,int *) ;

void iser_unreg_mem_fmr(struct iscsi_iser_task *iser_task,
   enum iser_data_dir cmd_dir)
{
 struct iser_mem_reg *reg = &iser_task->rdma_reg[cmd_dir];

 if (!reg->mem_h)
  return;

 iser_dbg("PHYSICAL Mem.Unregister mem_h %p\n", reg->mem_h);

 ib_fmr_pool_unmap((struct ib_pool_fmr *)reg->mem_h);

 reg->mem_h = ((void*)0);
}
