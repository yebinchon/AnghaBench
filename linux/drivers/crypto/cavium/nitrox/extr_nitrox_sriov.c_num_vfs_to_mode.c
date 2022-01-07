
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vf_mode { ____Placeholder_vf_mode } vf_mode ;


 int __NDEV_MODE_PF ;
 int __NDEV_MODE_VF128 ;
 int __NDEV_MODE_VF16 ;
 int __NDEV_MODE_VF32 ;
 int __NDEV_MODE_VF64 ;

__attribute__((used)) static inline enum vf_mode num_vfs_to_mode(int num_vfs)
{
 enum vf_mode mode = 0;

 switch (num_vfs) {
 case 0:
  mode = __NDEV_MODE_PF;
  break;
 case 16:
  mode = __NDEV_MODE_VF16;
  break;
 case 32:
  mode = __NDEV_MODE_VF32;
  break;
 case 64:
  mode = __NDEV_MODE_VF64;
  break;
 case 128:
  mode = __NDEV_MODE_VF128;
  break;
 }

 return mode;
}
