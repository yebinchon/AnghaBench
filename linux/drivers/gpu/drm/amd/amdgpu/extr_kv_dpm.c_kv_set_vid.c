
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct kv_power_info {TYPE_1__* graphics_level; scalar_t__ voltage_drop_t; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int MinVddNb; scalar_t__ VoltageDownH; } ;


 int cpu_to_be32 (int ) ;
 int kv_convert_2bit_index_to_voltage (struct amdgpu_device*,size_t) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int kv_set_vid(struct amdgpu_device *adev, u32 index, u32 vid)
{
 struct kv_power_info *pi = kv_get_pi(adev);

 pi->graphics_level[index].VoltageDownH = (u8)pi->voltage_drop_t;
 pi->graphics_level[index].MinVddNb =
  cpu_to_be32(kv_convert_2bit_index_to_voltage(adev, vid));

 return 0;
}
