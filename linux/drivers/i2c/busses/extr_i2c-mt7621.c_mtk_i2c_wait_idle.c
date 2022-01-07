
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_i2c {int dev; scalar_t__ base; } ;


 scalar_t__ REG_SM0CTL1_REG ;
 int SM0CTL1_TRI ;
 int TIMEOUT_MS ;
 int dev_dbg (int ,char*,int) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int mtk_i2c_wait_idle(struct mtk_i2c *i2c)
{
 int ret;
 u32 val;

 ret = readl_relaxed_poll_timeout(i2c->base + REG_SM0CTL1_REG,
      val, !(val & SM0CTL1_TRI),
      10, TIMEOUT_MS * 1000);
 if (ret)
  dev_dbg(i2c->dev, "idle err(%d)\n", ret);

 return ret;
}
