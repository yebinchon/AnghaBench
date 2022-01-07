
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fault {int event; } ;


 int nvkm_event_send (int *,int,int ,int *,int ) ;

__attribute__((used)) static void
gp100_fault_intr(struct nvkm_fault *fault)
{
 nvkm_event_send(&fault->event, 1, 0, ((void*)0), 0);
}
