
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int __get_cmd640_reg (int ) ;
 int cmd640_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8 get_cmd640_reg(u16 reg)
{
 unsigned long flags;
 u8 b;

 spin_lock_irqsave(&cmd640_lock, flags);
 b = __get_cmd640_reg(reg);
 spin_unlock_irqrestore(&cmd640_lock, flags);
 return b;
}
