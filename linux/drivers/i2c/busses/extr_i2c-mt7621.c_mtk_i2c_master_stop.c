
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_i2c {scalar_t__ base; } ;


 scalar_t__ REG_SM0CTL1_REG ;
 int SM0CTL1_STOP ;
 int SM0CTL1_TRI ;
 int iowrite32 (int,scalar_t__) ;
 int mtk_i2c_wait_idle (struct mtk_i2c*) ;

__attribute__((used)) static int mtk_i2c_master_stop(struct mtk_i2c *i2c)
{
 iowrite32(SM0CTL1_STOP | SM0CTL1_TRI, i2c->base + REG_SM0CTL1_REG);
 return mtk_i2c_wait_idle(i2c);
}
