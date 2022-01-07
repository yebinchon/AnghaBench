
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2c {scalar_t__ need_wr_rd_fence; } ;


 int SCB_CORE_REV_REG ;
 int img_i2c_writel (struct img_i2c*,int ,int ) ;

__attribute__((used)) static void img_i2c_wr_rd_fence(struct img_i2c *i2c)
{
 if (i2c->need_wr_rd_fence) {
  img_i2c_writel(i2c, SCB_CORE_REV_REG, 0);
  img_i2c_writel(i2c, SCB_CORE_REV_REG, 0);
 }
}
