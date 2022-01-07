
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;







__attribute__((used)) static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
{
 switch (ioctl_id) {
 case 128:
 case 130:
 case 129:
 case 131:
  return 1;
 default:
  return 0;
 }
}
