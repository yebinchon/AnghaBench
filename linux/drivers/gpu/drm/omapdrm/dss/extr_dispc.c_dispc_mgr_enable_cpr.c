
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_MGR_FLD_CPR ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int mgr_fld_write (struct dispc_device*,int,int ,int) ;

__attribute__((used)) static void dispc_mgr_enable_cpr(struct dispc_device *dispc,
     enum omap_channel channel, bool enable)
{
 if (channel == OMAP_DSS_CHANNEL_DIGIT)
  return;

 mgr_fld_write(dispc, channel, DISPC_MGR_FLD_CPR, enable);
}
