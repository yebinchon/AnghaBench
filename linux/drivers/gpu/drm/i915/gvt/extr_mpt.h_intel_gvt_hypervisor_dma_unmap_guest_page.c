
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {int handle; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {int (* dma_unmap_guest_page ) (int ,int ) ;} ;


 TYPE_2__ intel_gvt_host ;
 int stub1 (int ,int ) ;

__attribute__((used)) static inline void intel_gvt_hypervisor_dma_unmap_guest_page(
  struct intel_vgpu *vgpu, dma_addr_t dma_addr)
{
 intel_gvt_host.mpt->dma_unmap_guest_page(vgpu->handle, dma_addr);
}
