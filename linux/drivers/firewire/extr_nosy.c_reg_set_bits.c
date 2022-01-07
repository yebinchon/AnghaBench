
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcilynx {int dummy; } ;


 int reg_read (struct pcilynx*,int) ;
 int reg_write (struct pcilynx*,int,int) ;

__attribute__((used)) static inline void
reg_set_bits(struct pcilynx *lynx, int offset, u32 mask)
{
 reg_write(lynx, offset, (reg_read(lynx, offset) | mask));
}
