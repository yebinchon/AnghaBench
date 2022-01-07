
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u32 ;
struct TYPE_2__ {int * ptr; } ;
struct radeon_device {TYPE_1__ gart; } ;


 int cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;

void rs400_gart_set_page(struct radeon_device *rdev, unsigned i,
    uint64_t entry)
{
 u32 *gtt = rdev->gart.ptr;
 gtt[i] = cpu_to_le32(lower_32_bits(entry));
}
