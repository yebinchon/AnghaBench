
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2if {scalar_t__ base; } ;


 scalar_t__ PS2DATA ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void ps2_clear_input(struct ps2if *ps2if)
{
 int maxread = 100;

 while (maxread--) {
  if ((readl_relaxed(ps2if->base + PS2DATA) & 0xff) == 0xff)
   break;
 }
}
