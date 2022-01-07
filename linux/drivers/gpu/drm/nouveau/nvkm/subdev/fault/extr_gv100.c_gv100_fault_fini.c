
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int device; } ;
struct nvkm_fault {TYPE_3__ subdev; scalar_t__* buffer; TYPE_2__* func; int nrpfb; } ;
struct TYPE_4__ {int (* fini ) (scalar_t__) ;} ;
struct TYPE_5__ {TYPE_1__ buffer; } ;


 int nvkm_mask (int ,int,int,int) ;
 int nvkm_notify_put (int *) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void
gv100_fault_fini(struct nvkm_fault *fault)
{
 nvkm_notify_put(&fault->nrpfb);
 if (fault->buffer[0])
  fault->func->buffer.fini(fault->buffer[0]);
 nvkm_mask(fault->subdev.device, 0x100a34, 0x80000000, 0x80000000);
}
