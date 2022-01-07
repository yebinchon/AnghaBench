
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct amdgpu_device {int dummy; } ;



__attribute__((used)) static u16 kv_convert_8bit_index_to_voltage(struct amdgpu_device *adev,
         u16 voltage)
{
 return 6200 - (voltage * 25);
}
