
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gk104_fifo {int base; } ;


 int nvkm_fifo_uevent (int *) ;

__attribute__((used)) static void
gk104_fifo_intr_engine(struct gk104_fifo *fifo)
{
 nvkm_fifo_uevent(&fifo->base);
}
