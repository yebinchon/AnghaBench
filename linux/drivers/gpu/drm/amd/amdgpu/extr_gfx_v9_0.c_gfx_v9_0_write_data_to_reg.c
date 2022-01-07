
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int PACKET3 (int ,int) ;
 int PACKET3_WRITE_DATA ;
 int WRITE_DATA_DST_SEL (int ) ;
 int WRITE_DATA_ENGINE_SEL (int) ;
 int WR_CONFIRM ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void gfx_v9_0_write_data_to_reg(struct amdgpu_ring *ring, int eng_sel,
           bool wc, uint32_t reg, uint32_t val)
{
 amdgpu_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 amdgpu_ring_write(ring, WRITE_DATA_ENGINE_SEL(eng_sel) |
    WRITE_DATA_DST_SEL(0) |
    (wc ? WR_CONFIRM : 0));
 amdgpu_ring_write(ring, reg);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, val);
}
