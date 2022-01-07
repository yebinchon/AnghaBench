
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_i2c {int req_slave_addr; int msg; } ;


 int ICR_ALDIE ;
 int ICR_START ;
 int ICR_STOP ;
 int ICR_TB ;
 int _ICR (struct pxa_i2c*) ;
 int _IDBR (struct pxa_i2c*) ;
 int i2c_pxa_addr_byte (int ) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void i2c_pxa_start_message(struct pxa_i2c *i2c)
{
 u32 icr;




 writel(i2c_pxa_addr_byte(i2c->msg), _IDBR(i2c));
 i2c->req_slave_addr = i2c_pxa_addr_byte(i2c->msg);




 icr = readl(_ICR(i2c)) & ~(ICR_STOP | ICR_ALDIE);
 writel(icr | ICR_START | ICR_TB, _ICR(i2c));
}
