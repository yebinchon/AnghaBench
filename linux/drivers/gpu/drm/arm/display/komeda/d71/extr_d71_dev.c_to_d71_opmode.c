
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DO01_ACTIVE_MODE ;
 int DO0_ACTIVE_MODE ;
 int DO1_ACTIVE_MODE ;
 int INACTIVE_MODE ;




 int WARN (int,char*) ;

__attribute__((used)) static int to_d71_opmode(int core_mode)
{
 switch (core_mode) {
 case 131:
  return DO0_ACTIVE_MODE;
 case 130:
  return DO1_ACTIVE_MODE;
 case 129:
  return DO01_ACTIVE_MODE;
 case 128:
  return INACTIVE_MODE;
 default:
  WARN(1, "Unknown operation mode");
  return INACTIVE_MODE;
 }
}
