
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dispc_device {TYPE_1__* feat; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
struct TYPE_2__ {int buffer_size_unit; scalar_t__ set_max_preload; } ;


 int DISPC_OVL_FIFO_THRESHOLD (int) ;
 int DISPC_OVL_PRELOAD (int) ;
 int DSSDBG (char*,int,int,int,int,int) ;
 int FEAT_PRELOAD ;
 int FEAT_REG_FIFOHIGHTHRESHOLD ;
 int FEAT_REG_FIFOLOWTHRESHOLD ;
 int FLD_VAL (int,int ,int ) ;
 int OMAP_DSS_WB ;
 int REG_GET (struct dispc_device*,int ,int ,int ) ;
 int WARN_ON (int) ;
 int dispc_get_reg_field (struct dispc_device*,int ,int *,int *) ;
 scalar_t__ dispc_has_feature (struct dispc_device*,int ) ;
 int dispc_write_reg (struct dispc_device*,int ,int) ;
 int min (int,int) ;

void dispc_ovl_set_fifo_threshold(struct dispc_device *dispc,
      enum omap_plane_id plane,
      u32 low, u32 high)
{
 u8 hi_start, hi_end, lo_start, lo_end;
 u32 unit;

 unit = dispc->feat->buffer_size_unit;

 WARN_ON(low % unit != 0);
 WARN_ON(high % unit != 0);

 low /= unit;
 high /= unit;

 dispc_get_reg_field(dispc, FEAT_REG_FIFOHIGHTHRESHOLD,
       &hi_start, &hi_end);
 dispc_get_reg_field(dispc, FEAT_REG_FIFOLOWTHRESHOLD,
       &lo_start, &lo_end);

 DSSDBG("fifo(%d) threshold (bytes), old %u/%u, new %u/%u\n",
   plane,
   REG_GET(dispc, DISPC_OVL_FIFO_THRESHOLD(plane),
    lo_start, lo_end) * unit,
   REG_GET(dispc, DISPC_OVL_FIFO_THRESHOLD(plane),
    hi_start, hi_end) * unit,
   low * unit, high * unit);

 dispc_write_reg(dispc, DISPC_OVL_FIFO_THRESHOLD(plane),
   FLD_VAL(high, hi_start, hi_end) |
   FLD_VAL(low, lo_start, lo_end));






 if (dispc_has_feature(dispc, FEAT_PRELOAD) &&
     dispc->feat->set_max_preload && plane != OMAP_DSS_WB)
  dispc_write_reg(dispc, DISPC_OVL_PRELOAD(plane),
    min(high, 0xfffu));
}
