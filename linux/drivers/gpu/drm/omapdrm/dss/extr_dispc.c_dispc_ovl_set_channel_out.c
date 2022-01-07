
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
 int FEAT_MGR_LCD3 ;
 int FLD_MOD (int ,int,int,int) ;
 scalar_t__ dispc_has_feature (struct dispc_device*,int ) ;
 int dispc_read_reg (struct dispc_device*,int ) ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;

__attribute__((used)) static void dispc_ovl_set_channel_out(struct dispc_device *dispc,
          enum omap_plane_id plane,
          enum omap_channel channel)
{
 int shift;
 u32 val;
 int chan = 0, chan2 = 0;

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
  return;
 }

 val = dispc_read_reg(dispc, DISPC_OVL_ATTRIBUTES(plane));
 if (dispc_has_feature(dispc, FEAT_MGR_LCD2)) {
  switch (channel) {
  case 135:
   chan = 0;
   chan2 = 0;
   break;
  case 136:
   chan = 1;
   chan2 = 0;
   break;
  case 134:
   chan = 0;
   chan2 = 1;
   break;
  case 133:
   if (dispc_has_feature(dispc, FEAT_MGR_LCD3)) {
    chan = 0;
    chan2 = 2;
   } else {
    BUG();
    return;
   }
   break;
  case 132:
   chan = 0;
   chan2 = 3;
   break;
  default:
   BUG();
   return;
  }

  val = FLD_MOD(val, chan, shift, shift);
  val = FLD_MOD(val, chan2, 31, 30);
 } else {
  val = FLD_MOD(val, channel, shift, shift);
 }
 dispc_write_reg(dispc, DISPC_OVL_ATTRIBUTES(plane), val);
}
