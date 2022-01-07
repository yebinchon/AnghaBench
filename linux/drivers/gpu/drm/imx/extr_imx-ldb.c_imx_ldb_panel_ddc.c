
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct imx_ldb_channel {int mode_valid; int bus_flags; int mode; int panel; int edid_len; int edid; int ddc; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int OF_USE_NATIVE_MODE ;
 int dev_dbg (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int kmemdup (int const*,int ,int ) ;
 int of_find_i2c_adapter_by_node (struct device_node*) ;
 int of_get_drm_display_mode (struct device_node*,int *,int *,int ) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

__attribute__((used)) static int imx_ldb_panel_ddc(struct device *dev,
  struct imx_ldb_channel *channel, struct device_node *child)
{
 struct device_node *ddc_node;
 const u8 *edidp;
 int ret;

 ddc_node = of_parse_phandle(child, "ddc-i2c-bus", 0);
 if (ddc_node) {
  channel->ddc = of_find_i2c_adapter_by_node(ddc_node);
  of_node_put(ddc_node);
  if (!channel->ddc) {
   dev_warn(dev, "failed to get ddc i2c adapter\n");
   return -EPROBE_DEFER;
  }
 }

 if (!channel->ddc) {

  dev_dbg(dev, "no ddc available\n");

  edidp = of_get_property(child, "edid",
     &channel->edid_len);
  if (edidp) {
   channel->edid = kmemdup(edidp,
      channel->edid_len,
      GFP_KERNEL);
  } else if (!channel->panel) {

   ret = of_get_drm_display_mode(child,
            &channel->mode,
            &channel->bus_flags,
            OF_USE_NATIVE_MODE);
   if (!ret)
    channel->mode_valid = 1;
  }
 }
 return 0;
}
