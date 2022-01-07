
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int superio_inb (int) ;
 int superio_outb (int,int) ;

__attribute__((used)) static inline void superio_clear_mask(int mask, int reg)
{
 u8 curr_val = superio_inb(reg);
 u8 new_val = curr_val & ~mask;

 if (curr_val != new_val)
  superio_outb(new_val, reg);
}
