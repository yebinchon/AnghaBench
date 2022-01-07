
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int BUG () ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int FEAT_MGR_LCD2 ;
 int FLD_GET (int ,int,int) ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_CHANNEL_LCD2 ;
 int OMAP_DSS_CHANNEL_LCD3 ;
 int OMAP_DSS_CHANNEL_WB ;




 int dispc_has_feature (struct dispc_device*,int ) ;
 int dispc_read_reg (struct dispc_device*,int ) ;

__attribute__((used)) static enum omap_channel dispc_ovl_get_channel_out(struct dispc_device *dispc,
         enum omap_plane_id plane)
{
 int shift;
 u32 val;

 switch (plane) {
 case 131:
  shift = 8;
  break;
 case 130:
 case 129:
 case 128:
  shift = 16;
  break;
 default:
  BUG();
  return 0;
 }

 val = dispc_read_reg(dispc, DISPC_OVL_ATTRIBUTES(plane));

 if (FLD_GET(val, shift, shift) == 1)
  return OMAP_DSS_CHANNEL_DIGIT;

 if (!dispc_has_feature(dispc, FEAT_MGR_LCD2))
  return OMAP_DSS_CHANNEL_LCD;

 switch (FLD_GET(val, 31, 30)) {
 case 0:
 default:
  return OMAP_DSS_CHANNEL_LCD;
 case 1:
  return OMAP_DSS_CHANNEL_LCD2;
 case 2:
  return OMAP_DSS_CHANNEL_LCD3;
 case 3:
  return OMAP_DSS_CHANNEL_WB;
 }
}
