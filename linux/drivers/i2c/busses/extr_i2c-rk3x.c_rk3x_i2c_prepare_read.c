
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct rk3x_i2c {unsigned int processed; TYPE_1__* msg; } ;
struct TYPE_2__ {unsigned int len; } ;


 int REG_CON ;
 unsigned int REG_CON_LASTACK ;
 unsigned int REG_CON_MOD (int ) ;
 unsigned int REG_CON_MOD_MASK ;
 int REG_CON_MOD_RX ;
 int REG_MRXCNT ;
 unsigned int i2c_readl (struct rk3x_i2c*,int ) ;
 int i2c_writel (struct rk3x_i2c*,unsigned int,int ) ;

__attribute__((used)) static void rk3x_i2c_prepare_read(struct rk3x_i2c *i2c)
{
 unsigned int len = i2c->msg->len - i2c->processed;
 u32 con;

 con = i2c_readl(i2c, REG_CON);





 if (len > 32) {
  len = 32;
  con &= ~REG_CON_LASTACK;
 } else {
  con |= REG_CON_LASTACK;
 }


 if (i2c->processed != 0) {
  con &= ~REG_CON_MOD_MASK;
  con |= REG_CON_MOD(REG_CON_MOD_RX);
 }

 i2c_writel(i2c, con, REG_CON);
 i2c_writel(i2c, len, REG_MRXCNT);
}
