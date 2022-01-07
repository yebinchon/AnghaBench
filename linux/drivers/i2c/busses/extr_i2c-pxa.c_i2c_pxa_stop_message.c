
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_i2c {int dummy; } ;


 int ICR_ACKNAK ;
 int ICR_STOP ;
 int _ICR (struct pxa_i2c*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void i2c_pxa_stop_message(struct pxa_i2c *i2c)
{
 u32 icr;




 icr = readl(_ICR(i2c));
 icr &= ~(ICR_STOP | ICR_ACKNAK);
 writel(icr, _ICR(i2c));
}
