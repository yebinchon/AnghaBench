
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fpga_image_info {int disable_timeout_us; int enable_timeout_us; } ;
struct fpga_bridge {struct altera_freeze_br_data* priv; struct fpga_image_info* info; } ;
struct altera_freeze_br_data {int enable; } ;


 int altera_freeze_br_do_freeze (struct altera_freeze_br_data*,int ) ;
 int altera_freeze_br_do_unfreeze (struct altera_freeze_br_data*,int ) ;

__attribute__((used)) static int altera_freeze_br_enable_set(struct fpga_bridge *bridge,
           bool enable)
{
 struct altera_freeze_br_data *priv = bridge->priv;
 struct fpga_image_info *info = bridge->info;
 u32 timeout = 0;
 int ret;

 if (enable) {
  if (info)
   timeout = info->enable_timeout_us;

  ret = altera_freeze_br_do_unfreeze(bridge->priv, timeout);
 } else {
  if (info)
   timeout = info->disable_timeout_us;

  ret = altera_freeze_br_do_freeze(bridge->priv, timeout);
 }

 if (!ret)
  priv->enable = enable;

 return ret;
}
