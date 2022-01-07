
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct nvkm_fault {int nrpfb; int * buffer; TYPE_3__* func; TYPE_1__ subdev; } ;
struct TYPE_5__ {int (* init ) (int ) ;} ;
struct TYPE_6__ {TYPE_2__ buffer; } ;


 int nvkm_mask (int ,int,int,int) ;
 int nvkm_notify_get (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void
gv100_fault_init(struct nvkm_fault *fault)
{
 nvkm_mask(fault->subdev.device, 0x100a2c, 0x80000000, 0x80000000);
 fault->func->buffer.init(fault->buffer[0]);
 nvkm_notify_get(&fault->nrpfb);
}
