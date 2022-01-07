
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nvkm_device* device; } ;
struct nvkm_pci {scalar_t__ irq; TYPE_2__* func; scalar_t__ msi; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* msi_rearm ) (struct nvkm_pci*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int nvkm_mc_intr (struct nvkm_device*,int*) ;
 int nvkm_mc_intr_rearm (struct nvkm_device*) ;
 int nvkm_mc_intr_unarm (struct nvkm_device*) ;
 int stub1 (struct nvkm_pci*) ;

__attribute__((used)) static irqreturn_t
nvkm_pci_intr(int irq, void *arg)
{
 struct nvkm_pci *pci = arg;
 struct nvkm_device *device = pci->subdev.device;
 bool handled = 0;

 if (pci->irq < 0)
  return IRQ_HANDLED;

 nvkm_mc_intr_unarm(device);
 if (pci->msi)
  pci->func->msi_rearm(pci);
 nvkm_mc_intr(device, &handled);
 nvkm_mc_intr_rearm(device);
 return handled ? IRQ_HANDLED : IRQ_NONE;
}
