
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_2__ {int mem_base; int mem_size; int gws; int oa; } ;


 size_t GDS_GWS_VMID0__SIZE__SHIFT ;
 int PACKET3 (int ,int) ;
 int PACKET3_WRITE_DATA ;
 int WRITE_DATA_DST_SEL (int ) ;
 int WRITE_DATA_ENGINE_SEL (int ) ;
 TYPE_1__* amdgpu_gds_reg_offset ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void gfx_v7_0_ring_emit_gds_switch(struct amdgpu_ring *ring,
       uint32_t vmid,
       uint32_t gds_base, uint32_t gds_size,
       uint32_t gws_base, uint32_t gws_size,
       uint32_t oa_base, uint32_t oa_size)
{

 amdgpu_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 amdgpu_ring_write(ring, (WRITE_DATA_ENGINE_SEL(0) |
    WRITE_DATA_DST_SEL(0)));
 amdgpu_ring_write(ring, amdgpu_gds_reg_offset[vmid].mem_base);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, gds_base);


 amdgpu_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 amdgpu_ring_write(ring, (WRITE_DATA_ENGINE_SEL(0) |
    WRITE_DATA_DST_SEL(0)));
 amdgpu_ring_write(ring, amdgpu_gds_reg_offset[vmid].mem_size);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, gds_size);


 amdgpu_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 amdgpu_ring_write(ring, (WRITE_DATA_ENGINE_SEL(0) |
    WRITE_DATA_DST_SEL(0)));
 amdgpu_ring_write(ring, amdgpu_gds_reg_offset[vmid].gws);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, gws_size << GDS_GWS_VMID0__SIZE__SHIFT | gws_base);


 amdgpu_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 amdgpu_ring_write(ring, (WRITE_DATA_ENGINE_SEL(0) |
    WRITE_DATA_DST_SEL(0)));
 amdgpu_ring_write(ring, amdgpu_gds_reg_offset[vmid].oa);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, (1 << (oa_size + oa_base)) - (1 << oa_base));
}
