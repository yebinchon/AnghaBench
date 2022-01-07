
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsi_data {TYPE_1__* vc; } ;
struct TYPE_2__ {int source; } ;


 int BUG () ;


 int EINVAL ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct dsi_data*) ;
 int dsi_sync_vc_l4 (struct dsi_data*,int) ;
 int dsi_sync_vc_vp (struct dsi_data*,int) ;
 int dsi_vc_is_enabled (struct dsi_data*,int) ;
 int in_interrupt () ;

__attribute__((used)) static int dsi_sync_vc(struct dsi_data *dsi, int channel)
{
 WARN_ON(!dsi_bus_is_locked(dsi));

 WARN_ON(in_interrupt());

 if (!dsi_vc_is_enabled(dsi, channel))
  return 0;

 switch (dsi->vc[channel].source) {
 case 128:
  return dsi_sync_vc_vp(dsi, channel);
 case 129:
  return dsi_sync_vc_l4(dsi, channel);
 default:
  BUG();
  return -EINVAL;
 }
}
