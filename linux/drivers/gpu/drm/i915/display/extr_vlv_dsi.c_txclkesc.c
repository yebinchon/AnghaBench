
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;






__attribute__((used)) static u16 txclkesc(u32 divider, unsigned int us)
{
 switch (divider) {
 case 130:
 default:
  return 20 * us;
 case 129:
  return 10 * us;
 case 128:
  return 5 * us;
 }
}
