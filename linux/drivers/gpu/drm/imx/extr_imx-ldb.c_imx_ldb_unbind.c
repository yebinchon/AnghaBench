
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_ldb_channel {int ddc; int edid; scalar_t__ panel; } ;
struct imx_ldb {struct imx_ldb_channel* channel; } ;
struct device {int dummy; } ;


 struct imx_ldb* dev_get_drvdata (struct device*) ;
 int drm_panel_detach (scalar_t__) ;
 int i2c_put_adapter (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void imx_ldb_unbind(struct device *dev, struct device *master,
 void *data)
{
 struct imx_ldb *imx_ldb = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < 2; i++) {
  struct imx_ldb_channel *channel = &imx_ldb->channel[i];

  if (channel->panel)
   drm_panel_detach(channel->panel);

  kfree(channel->edid);
  i2c_put_adapter(channel->ddc);
 }
}
