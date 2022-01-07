
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_i2c {int dummy; } ;


 int ICR_ACKNAK ;
 int ICR_TB ;
 int _ICR (struct pxa_i2c*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void i2c_pxa_slave_rxfull(struct pxa_i2c *i2c, u32 isr)
{
 writel(readl(_ICR(i2c)) | ICR_TB | ICR_ACKNAK, _ICR(i2c));
}
