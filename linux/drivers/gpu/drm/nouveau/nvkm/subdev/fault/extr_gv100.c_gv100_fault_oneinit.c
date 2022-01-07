
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fault {int nrpfb; int event; TYPE_1__** buffer; } ;
struct TYPE_2__ {int object; } ;


 int gv100_fault_ntfy_nrpfb ;
 int nvkm_notify_init (int *,int *,int ,int,int *,int ,int ,int *) ;

int
gv100_fault_oneinit(struct nvkm_fault *fault)
{
 return nvkm_notify_init(&fault->buffer[0]->object, &fault->event,
    gv100_fault_ntfy_nrpfb, 1, ((void*)0), 0, 0,
    &fault->nrpfb);
}
