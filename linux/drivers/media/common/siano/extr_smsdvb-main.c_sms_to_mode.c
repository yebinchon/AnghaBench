
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_4K ;
 int TRANSMISSION_MODE_8K ;
 int TRANSMISSION_MODE_AUTO ;

__attribute__((used)) static inline int sms_to_mode(u32 mode)
{
 switch (mode) {
 case 2:
  return TRANSMISSION_MODE_2K;
 case 4:
  return TRANSMISSION_MODE_4K;
 case 8:
  return TRANSMISSION_MODE_8K;
 }
 return TRANSMISSION_MODE_AUTO;
}
