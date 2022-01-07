
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dev_type { ____Placeholder_dev_type } dev_type ;


 int DEV_UNKNOWN ;
 int DEV_X16 ;
 int DEV_X4 ;
 int DEV_X8 ;

__attribute__((used)) static enum dev_type __ibridge_get_width(u32 mtr)
{
 enum dev_type type;

 switch (mtr) {
 case 3:
  type = DEV_UNKNOWN;
  break;
 case 2:
  type = DEV_X16;
  break;
 case 1:
  type = DEV_X8;
  break;
 case 0:
  type = DEV_X4;
  break;
 }

 return type;
}
