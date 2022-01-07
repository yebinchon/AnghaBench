
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2if {scalar_t__ base; } ;


 int ENODEV ;
 scalar_t__ PS2CR ;
 int PS2CR_FKC ;
 int PS2CR_FKD ;
 unsigned int PS2STAT_KBC ;
 unsigned int PS2STAT_KBD ;
 int printk (char*,unsigned int) ;
 unsigned int ps2_test_one (struct ps2if*,int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int ps2_test(struct ps2if *ps2if)
{
 unsigned int stat;
 int ret = 0;

 stat = ps2_test_one(ps2if, PS2CR_FKC);
 if (stat != PS2STAT_KBD) {
  printk("PS/2 interface test failed[1]: %02x\n", stat);
  ret = -ENODEV;
 }

 stat = ps2_test_one(ps2if, 0);
 if (stat != (PS2STAT_KBC | PS2STAT_KBD)) {
  printk("PS/2 interface test failed[2]: %02x\n", stat);
  ret = -ENODEV;
 }

 stat = ps2_test_one(ps2if, PS2CR_FKD);
 if (stat != PS2STAT_KBC) {
  printk("PS/2 interface test failed[3]: %02x\n", stat);
  ret = -ENODEV;
 }

 writel_relaxed(0, ps2if->base + PS2CR);

 return ret;
}
