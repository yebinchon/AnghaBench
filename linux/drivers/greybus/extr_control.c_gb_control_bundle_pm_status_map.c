
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EBUSY ;
 int EINVAL ;
 int ENOMSG ;
 int EREMOTEIO ;





__attribute__((used)) static int gb_control_bundle_pm_status_map(u8 status)
{
 switch (status) {
 case 129:
  return -EINVAL;
 case 131:
  return -EBUSY;
 case 128:
  return -ENOMSG;
 case 130:
 default:
  return -EREMOTEIO;
 }
}
