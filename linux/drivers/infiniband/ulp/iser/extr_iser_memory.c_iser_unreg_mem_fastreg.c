
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iser_mem_reg {int * mem_h; } ;
struct iser_device {TYPE_2__* reg_ops; } ;
struct iscsi_iser_task {TYPE_1__* iser_conn; struct iser_mem_reg* rdma_reg; } ;
typedef enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;
struct TYPE_6__ {struct iser_device* device; } ;
struct TYPE_5__ {int (* reg_desc_put ) (TYPE_3__*,int *) ;} ;
struct TYPE_4__ {TYPE_3__ ib_conn; } ;


 int stub1 (TYPE_3__*,int *) ;

void iser_unreg_mem_fastreg(struct iscsi_iser_task *iser_task,
       enum iser_data_dir cmd_dir)
{
 struct iser_device *device = iser_task->iser_conn->ib_conn.device;
 struct iser_mem_reg *reg = &iser_task->rdma_reg[cmd_dir];

 if (!reg->mem_h)
  return;

 device->reg_ops->reg_desc_put(&iser_task->iser_conn->ib_conn,
         reg->mem_h);
 reg->mem_h = ((void*)0);
}
