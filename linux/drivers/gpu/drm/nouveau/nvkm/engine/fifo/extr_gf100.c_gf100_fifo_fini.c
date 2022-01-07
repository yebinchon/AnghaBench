
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct gf100_fifo {TYPE_1__ recover; } ;


 int flush_work (int *) ;
 struct gf100_fifo* gf100_fifo (struct nvkm_fifo*) ;

__attribute__((used)) static void
gf100_fifo_fini(struct nvkm_fifo *base)
{
 struct gf100_fifo *fifo = gf100_fifo(base);
 flush_work(&fifo->recover.work);
}
