
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bgpio_lock; } ;
struct tb10x_gpio {TYPE_1__ gc; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tb10x_reg_read (struct tb10x_gpio*,unsigned int) ;
 int tb10x_reg_write (struct tb10x_gpio*,unsigned int,int) ;

__attribute__((used)) static inline void tb10x_set_bits(struct tb10x_gpio *gpio, unsigned int offs,
    u32 mask, u32 val)
{
 u32 r;
 unsigned long flags;

 spin_lock_irqsave(&gpio->gc.bgpio_lock, flags);

 r = tb10x_reg_read(gpio, offs);
 r = (r & ~mask) | (val & mask);

 tb10x_reg_write(gpio, offs, r);

 spin_unlock_irqrestore(&gpio->gc.bgpio_lock, flags);
}
