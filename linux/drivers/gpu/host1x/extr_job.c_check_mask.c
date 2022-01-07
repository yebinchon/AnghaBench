
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_firewall {int mask; int reg; scalar_t__ words; int offset; } ;


 int EINVAL ;
 int check_register (struct host1x_firewall*,int) ;

__attribute__((used)) static int check_mask(struct host1x_firewall *fw)
{
 u32 mask = fw->mask;
 u32 reg = fw->reg;
 int ret;

 while (mask) {
  if (fw->words == 0)
   return -EINVAL;

  if (mask & 1) {
   ret = check_register(fw, reg);
   if (ret < 0)
    return ret;

   fw->words--;
   fw->offset++;
  }
  mask >>= 1;
  reg++;
 }

 return 0;
}
