
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int BUG () ;





__attribute__((used)) static inline u16 DISPC_POL_FREQ(enum omap_channel channel)
{
 switch (channel) {
 case 130:
  return 0x006C;
 case 131:
  BUG();
  return 0;
 case 129:
  return 0x0408;
 case 128:
  return 0x083C;
 default:
  BUG();
  return 0;
 }
}
