
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iser_data_buf {int size; int sg; } ;
struct iscsi_iser_task {TYPE_3__* iser_conn; } ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ ib_conn; } ;
struct TYPE_4__ {struct ib_device* ib_device; } ;


 int ib_dma_unmap_sg (struct ib_device*,int ,int ,int) ;

void iser_dma_unmap_task_data(struct iscsi_iser_task *iser_task,
         struct iser_data_buf *data,
         enum dma_data_direction dir)
{
 struct ib_device *dev;

 dev = iser_task->iser_conn->ib_conn.device->ib_device;
 ib_dma_unmap_sg(dev, data->sg, data->size, dir);
}
