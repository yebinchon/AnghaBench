
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {struct nvkm_bar* bar; } ;
struct TYPE_4__ {scalar_t__ oneinit; } ;
struct nvkm_bar {int bar2; TYPE_2__* func; TYPE_1__ subdev; } ;
struct TYPE_6__ {int (* wait ) (struct nvkm_bar*) ;int (* init ) (struct nvkm_bar*) ;} ;
struct TYPE_5__ {TYPE_3__ bar2; } ;


 int stub1 (struct nvkm_bar*) ;
 int stub2 (struct nvkm_bar*) ;

void
nvkm_bar_bar2_init(struct nvkm_device *device)
{
 struct nvkm_bar *bar = device->bar;
 if (bar && bar->subdev.oneinit && !bar->bar2 && bar->func->bar2.init) {
  bar->func->bar2.init(bar);
  bar->func->bar2.wait(bar);
  bar->bar2 = 1;
 }
}
