
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2if {scalar_t__ base; } ;


 scalar_t__ PS2CR ;
 unsigned int PS2CR_ENA ;
 scalar_t__ PS2STAT ;
 unsigned int PS2STAT_KBC ;
 unsigned int PS2STAT_KBD ;
 unsigned int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int ps2_test_one(struct ps2if *ps2if,
        unsigned int mask)
{
 unsigned int val;

 writel_relaxed(PS2CR_ENA | mask, ps2if->base + PS2CR);

 udelay(10);

 val = readl_relaxed(ps2if->base + PS2STAT);
 return val & (PS2STAT_KBC | PS2STAT_KBD);
}
