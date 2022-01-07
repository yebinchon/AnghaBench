
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {int dummy; } ;


 int PACKET3 (int ,int) ;
 int PACKET3_SET_RESOURCES ;
 int PACKET3_SET_RESOURCES_QUEUE_TYPE (int ) ;
 int PACKET3_SET_RESOURCES_VMID_MASK (int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void gfx10_kiq_set_resources(struct amdgpu_ring *kiq_ring, uint64_t queue_mask)
{
 amdgpu_ring_write(kiq_ring, PACKET3(PACKET3_SET_RESOURCES, 6));
 amdgpu_ring_write(kiq_ring, PACKET3_SET_RESOURCES_VMID_MASK(0) |
     PACKET3_SET_RESOURCES_QUEUE_TYPE(0));
 amdgpu_ring_write(kiq_ring, lower_32_bits(queue_mask));
 amdgpu_ring_write(kiq_ring, upper_32_bits(queue_mask));
 amdgpu_ring_write(kiq_ring, 0);
 amdgpu_ring_write(kiq_ring, 0);
 amdgpu_ring_write(kiq_ring, 0);
 amdgpu_ring_write(kiq_ring, 0);
}
