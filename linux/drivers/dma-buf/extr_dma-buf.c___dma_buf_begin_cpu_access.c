
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv {int dummy; } ;
struct dma_buf {struct dma_resv* resv; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 int MAX_SCHEDULE_TIMEOUT ;
 long dma_resv_wait_timeout_rcu (struct dma_resv*,int,int,int ) ;

__attribute__((used)) static int __dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
          enum dma_data_direction direction)
{
 bool write = (direction == DMA_BIDIRECTIONAL ||
        direction == DMA_TO_DEVICE);
 struct dma_resv *resv = dmabuf->resv;
 long ret;


 ret = dma_resv_wait_timeout_rcu(resv, write, 1,
        MAX_SCHEDULE_TIMEOUT);
 if (ret < 0)
  return ret;

 return 0;
}
