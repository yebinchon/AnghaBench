
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iser_device {TYPE_3__* reg_ops; } ;
struct iscsi_iser_task {TYPE_2__* iser_conn; } ;
typedef enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;
struct TYPE_6__ {int (* unreg_mem ) (struct iscsi_iser_task*,int) ;} ;
struct TYPE_4__ {struct iser_device* device; } ;
struct TYPE_5__ {TYPE_1__ ib_conn; } ;


 int stub1 (struct iscsi_iser_task*,int) ;

void iser_unreg_rdma_mem(struct iscsi_iser_task *task,
    enum iser_data_dir dir)
{
 struct iser_device *device = task->iser_conn->ib_conn.device;

 device->reg_ops->unreg_mem(task, dir);
}
