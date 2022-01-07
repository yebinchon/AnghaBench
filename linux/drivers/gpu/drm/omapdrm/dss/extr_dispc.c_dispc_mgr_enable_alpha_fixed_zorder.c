
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_CONFIG ;
 int FEAT_ALPHA_FIXED_ZORDER ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_CHANNEL_LCD ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int dispc_has_feature (struct dispc_device*,int ) ;

__attribute__((used)) static void dispc_mgr_enable_alpha_fixed_zorder(struct dispc_device *dispc,
      enum omap_channel ch,
      bool enable)
{
 if (!dispc_has_feature(dispc, FEAT_ALPHA_FIXED_ZORDER))
  return;

 if (ch == OMAP_DSS_CHANNEL_LCD)
  REG_FLD_MOD(dispc, DISPC_CONFIG, enable, 18, 18);
 else if (ch == OMAP_DSS_CHANNEL_DIGIT)
  REG_FLD_MOD(dispc, DISPC_CONFIG, enable, 19, 19);
}
