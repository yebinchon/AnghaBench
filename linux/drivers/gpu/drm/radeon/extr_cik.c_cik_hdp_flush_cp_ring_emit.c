
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_ring {int idx; int pipe; int me; } ;
struct radeon_device {struct radeon_ring* ring; } ;




 int CP0 ;
 int CP2 ;
 int CP6 ;
 int GPU_HDP_FLUSH_DONE ;
 int GPU_HDP_FLUSH_REQ ;
 int PACKET3 (int ,int) ;
 int PACKET3_WAIT_REG_MEM ;

 int WAIT_REG_MEM_ENGINE (int) ;
 int WAIT_REG_MEM_FUNCTION (int) ;
 int WAIT_REG_MEM_OPERATION (int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

__attribute__((used)) static void cik_hdp_flush_cp_ring_emit(struct radeon_device *rdev,
           int ridx)
{
 struct radeon_ring *ring = &rdev->ring[ridx];
 u32 ref_and_mask;

 switch (ring->idx) {
 case 130:
 case 129:
 default:
  switch (ring->me) {
  case 0:
   ref_and_mask = CP2 << ring->pipe;
   break;
  case 1:
   ref_and_mask = CP6 << ring->pipe;
   break;
  default:
   return;
  }
  break;
 case 128:
  ref_and_mask = CP0;
  break;
 }

 radeon_ring_write(ring, PACKET3(PACKET3_WAIT_REG_MEM, 5));
 radeon_ring_write(ring, (WAIT_REG_MEM_OPERATION(1) |
     WAIT_REG_MEM_FUNCTION(3) |
     WAIT_REG_MEM_ENGINE(1)));
 radeon_ring_write(ring, GPU_HDP_FLUSH_REQ >> 2);
 radeon_ring_write(ring, GPU_HDP_FLUSH_DONE >> 2);
 radeon_ring_write(ring, ref_and_mask);
 radeon_ring_write(ring, ref_and_mask);
 radeon_ring_write(ring, 0x20);
}
