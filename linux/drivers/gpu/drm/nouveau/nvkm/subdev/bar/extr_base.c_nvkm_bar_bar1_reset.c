
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_device {struct nvkm_bar* bar; } ;
struct nvkm_bar {TYPE_2__* func; } ;
struct TYPE_3__ {int (* wait ) (struct nvkm_bar*) ;int (* init ) (struct nvkm_bar*) ;} ;
struct TYPE_4__ {TYPE_1__ bar1; } ;


 int stub1 (struct nvkm_bar*) ;
 int stub2 (struct nvkm_bar*) ;

void
nvkm_bar_bar1_reset(struct nvkm_device *device)
{
 struct nvkm_bar *bar = device->bar;
 if (bar) {
  bar->func->bar1.init(bar);
  bar->func->bar1.wait(bar);
 }
}
