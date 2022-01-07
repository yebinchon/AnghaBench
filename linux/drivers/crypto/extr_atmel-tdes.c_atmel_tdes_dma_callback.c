
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {int done_task; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void atmel_tdes_dma_callback(void *data)
{
 struct atmel_tdes_dev *dd = data;


 tasklet_schedule(&dd->done_task);
}
