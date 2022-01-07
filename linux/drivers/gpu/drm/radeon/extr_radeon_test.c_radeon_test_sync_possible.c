
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {scalar_t__ idx; } ;


 scalar_t__ TN_RING_TYPE_VCE1_INDEX ;
 scalar_t__ TN_RING_TYPE_VCE2_INDEX ;

__attribute__((used)) static bool radeon_test_sync_possible(struct radeon_ring *ringA,
          struct radeon_ring *ringB)
{
 if (ringA->idx == TN_RING_TYPE_VCE2_INDEX &&
     ringB->idx == TN_RING_TYPE_VCE1_INDEX)
  return 0;

 return 1;
}
