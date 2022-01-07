
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ske_keypad {int ske_keypad_lock; scalar_t__ reg_base; } ;


 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ske_keypad_set_bits(struct ske_keypad *keypad, u16 addr,
  u8 mask, u8 data)
{
 u32 ret;

 spin_lock(&keypad->ske_keypad_lock);

 ret = readl(keypad->reg_base + addr);
 ret &= ~mask;
 ret |= data;
 writel(ret, keypad->reg_base + addr);

 spin_unlock(&keypad->ske_keypad_lock);
}
