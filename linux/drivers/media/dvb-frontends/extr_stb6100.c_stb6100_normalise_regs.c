
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mask; int set; } ;


 int STB6100_NUMREGS ;
 TYPE_1__* stb6100_template ;

__attribute__((used)) static inline void stb6100_normalise_regs(u8 regs[])
{
 int i;

 for (i = 0; i < STB6100_NUMREGS; i++)
  regs[i] = (regs[i] & stb6100_template[i].mask) | stb6100_template[i].set;
}
