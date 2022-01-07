
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {TYPE_1__* graphics_level; } ;
struct TYPE_2__ {int AT; } ;


 int cpu_to_be16 (int ) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static int kv_set_at(struct radeon_device *rdev, u32 index, u32 at)
{
 struct kv_power_info *pi = kv_get_pi(rdev);

 pi->graphics_level[index].AT = cpu_to_be16((u16)at);

 return 0;
}
