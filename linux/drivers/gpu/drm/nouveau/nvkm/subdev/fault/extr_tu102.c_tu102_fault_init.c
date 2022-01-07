
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_fault {int nrpfb; int * buffer; TYPE_2__* func; } ;
struct TYPE_3__ {int (* init ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ buffer; } ;


 int nvkm_notify_get (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void
tu102_fault_init(struct nvkm_fault *fault)
{

 fault->func->buffer.init(fault->buffer[0]);
 nvkm_notify_get(&fault->nrpfb);
}
