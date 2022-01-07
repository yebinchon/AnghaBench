
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct dma_buf_attachment {TYPE_2__* dmabuf; struct sg_table* sgt; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* unmap_dma_buf ) (struct dma_buf_attachment*,struct sg_table*,int) ;} ;


 scalar_t__ WARN_ON (int) ;
 int might_sleep () ;
 int stub1 (struct dma_buf_attachment*,struct sg_table*,int) ;

void dma_buf_unmap_attachment(struct dma_buf_attachment *attach,
    struct sg_table *sg_table,
    enum dma_data_direction direction)
{
 might_sleep();

 if (WARN_ON(!attach || !attach->dmabuf || !sg_table))
  return;

 if (attach->sgt == sg_table)
  return;

 attach->dmabuf->ops->unmap_dma_buf(attach, sg_table, direction);
}
