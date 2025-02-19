
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_i2c {scalar_t__ base; } ;


 scalar_t__ REG_SM0CTL1_REG ;
 int SM0CTL1_PGLEN (int) ;
 int SM0CTL1_TRI ;
 int iowrite32 (int,scalar_t__) ;
 int mtk_i2c_wait_idle (struct mtk_i2c*) ;

__attribute__((used)) static int mtk_i2c_master_cmd(struct mtk_i2c *i2c, u32 cmd, int page_len)
{
 iowrite32(cmd | SM0CTL1_TRI | SM0CTL1_PGLEN(page_len),
    i2c->base + REG_SM0CTL1_REG);
 return mtk_i2c_wait_idle(i2c);
}
