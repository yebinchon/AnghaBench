
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_dev {int done_task; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void omap_aes_dma_out_callback(void *data)
{
 struct omap_aes_dev *dd = data;


 tasklet_schedule(&dd->done_task);
}
