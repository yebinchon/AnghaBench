
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_i2c {int highmode_enter; int master_code; int wait; int lock; } ;


 int HZ ;
 int I2C_RETRY ;
 int ICR_ALDIE ;
 int ICR_GPIOEN ;
 int ICR_ITEIE ;
 int ICR_START ;
 int ICR_STOP ;
 int ICR_TB ;
 int _ICR (struct pxa_i2c*) ;
 int _IDBR (struct pxa_i2c*) ;
 int readl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 long wait_event_timeout (int ,int,int) ;
 int writel (int,int ) ;

__attribute__((used)) static int i2c_pxa_send_mastercode(struct pxa_i2c *i2c)
{
 u32 icr;
 long timeout;

 spin_lock_irq(&i2c->lock);
 i2c->highmode_enter = 1;
 writel(i2c->master_code, _IDBR(i2c));

 icr = readl(_ICR(i2c)) & ~(ICR_STOP | ICR_ALDIE);
 icr |= ICR_GPIOEN | ICR_START | ICR_TB | ICR_ITEIE;
 writel(icr, _ICR(i2c));

 spin_unlock_irq(&i2c->lock);
 timeout = wait_event_timeout(i2c->wait,
   i2c->highmode_enter == 0, HZ * 1);

 i2c->highmode_enter = 0;

 return (timeout == 0) ? I2C_RETRY : 0;
}
