
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int dummy; } ;


 int EINVAL ;





 int __IB_MAX_VL_0 ;
 int __IB_MAX_VL_0_1 ;
 int __IB_MAX_VL_0_14 ;
 int __IB_MAX_VL_0_3 ;
 int __IB_MAX_VL_0_7 ;

__attribute__((used)) static int translate_max_vl_num(struct ib_device *ibdev, u8 vl_hw_cap,
    u8 *max_vl_num)
{
 switch (vl_hw_cap) {
 case 132:
  *max_vl_num = __IB_MAX_VL_0;
  break;
 case 131:
  *max_vl_num = __IB_MAX_VL_0_1;
  break;
 case 129:
  *max_vl_num = __IB_MAX_VL_0_3;
  break;
 case 128:
  *max_vl_num = __IB_MAX_VL_0_7;
  break;
 case 130:
  *max_vl_num = __IB_MAX_VL_0_14;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
