
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu_ppgtt_spt {int refcount; TYPE_1__* vgpu; } ;
struct TYPE_2__ {int id; } ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int trace_spt_refcount (int ,char*,struct intel_vgpu_ppgtt_spt*,int,int) ;

__attribute__((used)) static inline void ppgtt_get_spt(struct intel_vgpu_ppgtt_spt *spt)
{
 int v = atomic_read(&spt->refcount);

 trace_spt_refcount(spt->vgpu->id, "inc", spt, v, (v + 1));
 atomic_inc(&spt->refcount);
}
