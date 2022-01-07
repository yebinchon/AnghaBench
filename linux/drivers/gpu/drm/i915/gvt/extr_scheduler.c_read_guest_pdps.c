
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct intel_vgpu {int dummy; } ;
struct TYPE_2__ {int val; } ;


 scalar_t__ RING_CTX_OFF (int ) ;
 int intel_gvt_hypervisor_read_gpa (struct intel_vgpu*,scalar_t__,int *,int) ;
 TYPE_1__* pdps ;

__attribute__((used)) static void read_guest_pdps(struct intel_vgpu *vgpu,
  u64 ring_context_gpa, u32 pdp[8])
{
 u64 gpa;
 int i;

 gpa = ring_context_gpa + RING_CTX_OFF(pdps[0].val);

 for (i = 0; i < 8; i++)
  intel_gvt_hypervisor_read_gpa(vgpu,
    gpa + i * 8, &pdp[7 - i], 4);
}
