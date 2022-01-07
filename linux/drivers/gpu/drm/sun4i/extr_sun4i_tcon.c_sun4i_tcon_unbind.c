
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_tcon {TYPE_1__* quirks; int list; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_channel_0; } ;


 struct sun4i_tcon* dev_get_drvdata (struct device*) ;
 int list_del (int *) ;
 int sun4i_dclk_free (struct sun4i_tcon*) ;
 int sun4i_tcon_free_clocks (struct sun4i_tcon*) ;

__attribute__((used)) static void sun4i_tcon_unbind(struct device *dev, struct device *master,
         void *data)
{
 struct sun4i_tcon *tcon = dev_get_drvdata(dev);

 list_del(&tcon->list);
 if (tcon->quirks->has_channel_0)
  sun4i_dclk_free(tcon);
 sun4i_tcon_free_clocks(tcon);
}
