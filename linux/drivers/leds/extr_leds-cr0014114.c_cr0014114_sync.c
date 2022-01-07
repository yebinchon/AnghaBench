
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cr0014114 {int do_recount; size_t count; scalar_t__ delay; int * buf; int spi; TYPE_1__* leds; } ;
struct TYPE_2__ {int brightness; } ;


 int CR_FW_DELAY_MSEC ;
 int CR_SET_BRIGHTNESS ;
 int cr0014114_calc_crc (int *,int) ;
 int cr0014114_recount (struct cr0014114*) ;
 unsigned long jiffies ;
 unsigned long jiffies_to_usecs (scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int msleep (int ) ;
 int spi_write (int ,int *,int) ;
 scalar_t__ time_after (scalar_t__,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usleep_range (unsigned long,unsigned long) ;

__attribute__((used)) static int cr0014114_sync(struct cr0014114 *priv)
{
 int ret;
 size_t i;
 unsigned long udelay, now = jiffies;


 if (time_after(priv->delay, now)) {
  udelay = jiffies_to_usecs(priv->delay - now);
  usleep_range(udelay, udelay + 1);
 }

 if (unlikely(priv->do_recount)) {
  ret = cr0014114_recount(priv);
  if (ret)
   goto err;

  priv->do_recount = 0;
  msleep(CR_FW_DELAY_MSEC);
 }

 priv->buf[0] = CR_SET_BRIGHTNESS;
 for (i = 0; i < priv->count; i++)
  priv->buf[i + 1] = priv->leds[i].brightness;
 cr0014114_calc_crc(priv->buf, priv->count + 2);
 ret = spi_write(priv->spi, priv->buf, priv->count + 2);

err:
 priv->delay = jiffies + msecs_to_jiffies(CR_FW_DELAY_MSEC);

 return ret;
}
