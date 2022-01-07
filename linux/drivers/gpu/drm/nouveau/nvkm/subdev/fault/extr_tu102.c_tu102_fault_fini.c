
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_fault {scalar_t__* buffer; TYPE_2__* func; int nrpfb; } ;
struct TYPE_3__ {int (* fini ) (scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ buffer; } ;


 int nvkm_notify_put (int *) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void
tu102_fault_fini(struct nvkm_fault *fault)
{
 nvkm_notify_put(&fault->nrpfb);
 if (fault->buffer[0])
  fault->func->buffer.fini(fault->buffer[0]);

}
