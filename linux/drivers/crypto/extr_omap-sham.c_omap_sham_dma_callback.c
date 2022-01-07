
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {int done_task; int flags; } ;


 int FLAGS_DMA_READY ;
 int set_bit (int ,int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void omap_sham_dma_callback(void *param)
{
 struct omap_sham_dev *dd = param;

 set_bit(FLAGS_DMA_READY, &dd->flags);
 tasklet_schedule(&dd->done_task);
}
