
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int vid_mapping_table; } ;
struct kv_power_info {TYPE_1__ sys_info; } ;
struct amdgpu_device {int dummy; } ;


 int kv_convert_8bit_index_to_voltage (struct amdgpu_device*,int ) ;
 scalar_t__ kv_convert_vid2_to_vid7 (struct amdgpu_device*,int *,scalar_t__) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static u16 kv_convert_2bit_index_to_voltage(struct amdgpu_device *adev,
         u32 vid_2bit)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 u32 vid_8bit = kv_convert_vid2_to_vid7(adev,
            &pi->sys_info.vid_mapping_table,
            vid_2bit);

 return kv_convert_8bit_index_to_voltage(adev, (u16)vid_8bit);
}
