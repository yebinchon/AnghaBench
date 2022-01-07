
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EACCES ;
 int ECANCELED ;
 int EINVAL ;
__attribute__((used)) static int zynqmp_pm_ret_code(u32 ret_status)
{
 switch (ret_status) {
 case 128:
 case 132:
  return 0;
 case 129:
  return -EACCES;
 case 134:
  return -ECANCELED;
 case 131:
 case 133:
 case 130:
 default:
  return -EINVAL;
 }
}
