
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nbio_hdp_flush_reg {int ref_and_mask_sdma0; } ;
struct amdgpu_ring {int me; struct amdgpu_device* adev; } ;
struct amdgpu_device {TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {int (* get_hdp_flush_req_offset ) (struct amdgpu_device*) ;int (* get_hdp_flush_done_offset ) (struct amdgpu_device*) ;struct nbio_hdp_flush_reg* hdp_flush_reg; } ;


 int sdma_v4_0_wait_reg_mem (struct amdgpu_ring*,int ,int,int ,int ,int,int,int) ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (struct amdgpu_device*) ;

__attribute__((used)) static void sdma_v4_0_ring_emit_hdp_flush(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 u32 ref_and_mask = 0;
 const struct nbio_hdp_flush_reg *nbio_hf_reg = adev->nbio_funcs->hdp_flush_reg;

 ref_and_mask = nbio_hf_reg->ref_and_mask_sdma0 << ring->me;

 sdma_v4_0_wait_reg_mem(ring, 0, 1,
          adev->nbio_funcs->get_hdp_flush_done_offset(adev),
          adev->nbio_funcs->get_hdp_flush_req_offset(adev),
          ref_and_mask, ref_and_mask, 10);
}
