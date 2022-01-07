
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_vmm {int dummy; } ;
struct nvkm_device {struct nvkm_bar* bar; } ;
struct nvkm_bar {TYPE_2__* func; scalar_t__ bar2; } ;
struct TYPE_3__ {struct nvkm_vmm* (* vmm ) (struct nvkm_bar*) ;} ;
struct TYPE_4__ {TYPE_1__ bar2; } ;


 struct nvkm_vmm* stub1 (struct nvkm_bar*) ;

struct nvkm_vmm *
nvkm_bar_bar2_vmm(struct nvkm_device *device)
{



 struct nvkm_bar *bar = device->bar;
 if (bar && bar->bar2)
  return bar->func->bar2.vmm(bar);
 return ((void*)0);
}
