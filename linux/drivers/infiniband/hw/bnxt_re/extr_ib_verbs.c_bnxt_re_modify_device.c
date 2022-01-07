
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device_modify {int dummy; } ;
struct ib_device {int dummy; } ;





int bnxt_re_modify_device(struct ib_device *ibdev,
     int device_modify_mask,
     struct ib_device_modify *device_modify)
{
 switch (device_modify_mask) {
 case 128:


  break;
 case 129:

  break;
 default:
  break;
 }
 return 0;
}
