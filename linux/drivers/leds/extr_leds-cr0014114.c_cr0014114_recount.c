
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cr0014114 {size_t count; int dev; int spi; } ;
typedef int cmd ;


 int CR_FW_DELAY_MSEC ;
 int CR_INIT_REENUMERATE ;
 int CR_NEXT_REENUMERATE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int msleep (int ) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int cr0014114_recount(struct cr0014114 *priv)
{
 int ret;
 size_t i;
 u8 cmd;

 dev_dbg(priv->dev, "LEDs recount is started\n");

 cmd = CR_INIT_REENUMERATE;
 ret = spi_write(priv->spi, &cmd, sizeof(cmd));
 if (ret)
  goto err;

 cmd = CR_NEXT_REENUMERATE;
 for (i = 0; i < priv->count; i++) {
  msleep(CR_FW_DELAY_MSEC);

  ret = spi_write(priv->spi, &cmd, sizeof(cmd));
  if (ret)
   goto err;
 }

err:
 dev_dbg(priv->dev, "LEDs recount is finished\n");

 if (ret)
  dev_err(priv->dev, "with error %d", ret);

 return ret;
}
