
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPEED_10000 ;
 int SPEED_14000 ;
 int SPEED_2500 ;
 int SPEED_25000 ;
 int SPEED_5000 ;
 int SPEED_UNKNOWN ;

__attribute__((used)) static inline int ib_speed_enum_to_int(int speed)
{
 switch (speed) {
 case 128:
  return SPEED_2500;
 case 133:
  return SPEED_5000;
 case 129:
 case 130:
  return SPEED_10000;
 case 131:
  return SPEED_14000;
 case 132:
  return SPEED_25000;
 }

 return SPEED_UNKNOWN;
}
