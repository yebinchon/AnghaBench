
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEYBOARD_UNLOCK_REG ;
 int KEY_IRQ_ENABLE_REG ;
 int master_outb (int,int ) ;

__attribute__((used)) static void q40kbd_stop(void)
{
 master_outb(0, KEY_IRQ_ENABLE_REG);
 master_outb(-1, KEYBOARD_UNLOCK_REG);
}
