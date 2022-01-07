
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_lanes; int rate; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct tc_data {int regmap; int dev; TYPE_2__ link; } ;
struct drm_display_mode {int htotal; int hsync_end; int hsync_start; int hdisplay; int vtotal; int vsync_end; int vsync_start; int vdisplay; int clock; int flags; } ;


 int ALIGN (int,int) ;
 int BPC_8 ;
 int COLOR_B ;
 int COLOR_BAR_MODE ;
 int COLOR_BAR_MODE_BARS ;
 int COLOR_G ;
 int COLOR_R ;
 int DE_POL_ACTIVE_HIGH ;
 int DIV_ROUND_UP (int,int) ;
 int DP0_ACTIVEVAL ;
 int DP0_MISC ;
 int DP0_STARTVAL ;
 int DP0_SYNCVAL ;
 int DP0_TOTALVAL ;
 int DP0_VIDSYNCDELAY ;
 int DPIPXLFMT ;
 int DPI_BPP_RGB888 ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int ENI2CFILTER ;
 int FIELD_PREP (int ,int) ;
 int FRMSYNC_DISABLED ;
 int HBPR ;
 int HDISPR ;
 int HFPR ;
 int HPW ;
 int HS_POL_ACTIVE_LOW ;
 int HS_WIDTH ;
 int HTIM01 ;
 int HTIM02 ;
 int H_ACT ;
 int H_START ;
 int H_TOTAL ;
 int MAX_TU_SYMBOL ;
 int MSF_DISABLED ;
 int OPXLFMT_RGB888 ;
 int SUB_CFG_TYPE_CONFIG1 ;
 int SYNCVAL_HS_POL_ACTIVE_LOW ;
 int SYNCVAL_VS_POL_ACTIVE_LOW ;
 int THRESH_DLY ;
 int TSTCTL ;
 int TU_SIZE ;
 int TU_SIZE_RECOMMENDED ;
 int VBPR ;
 int VDISPR ;
 int VFPR ;
 int VFUEN ;
 int VFUEN0 ;
 int VID_SYNC_DLY ;
 int VPCTRL0 ;
 int VSDELAY ;
 int VSPR ;
 int VS_POL_ACTIVE_LOW ;
 int VS_WIDTH ;
 int VTIM01 ;
 int VTIM02 ;
 int V_ACT ;
 int V_START ;
 int V_TOTAL ;
 int dev_dbg (int ,char*,int,int,...) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int tc_set_video_mode(struct tc_data *tc,
        const struct drm_display_mode *mode)
{
 int ret;
 int vid_sync_dly;
 int max_tu_symbol;

 int left_margin = mode->htotal - mode->hsync_end;
 int right_margin = mode->hsync_start - mode->hdisplay;
 int hsync_len = mode->hsync_end - mode->hsync_start;
 int upper_margin = mode->vtotal - mode->vsync_end;
 int lower_margin = mode->vsync_start - mode->vdisplay;
 int vsync_len = mode->vsync_end - mode->vsync_start;
 u32 dp0_syncval;
 u32 bits_per_pixel = 24;
 u32 in_bw, out_bw;
 in_bw = mode->clock * bits_per_pixel / 8;
 out_bw = tc->link.base.num_lanes * tc->link.base.rate;
 max_tu_symbol = DIV_ROUND_UP(in_bw * TU_SIZE_RECOMMENDED, out_bw);

 dev_dbg(tc->dev, "set mode %dx%d\n",
  mode->hdisplay, mode->vdisplay);
 dev_dbg(tc->dev, "H margin %d,%d sync %d\n",
  left_margin, right_margin, hsync_len);
 dev_dbg(tc->dev, "V margin %d,%d sync %d\n",
  upper_margin, lower_margin, vsync_len);
 dev_dbg(tc->dev, "total: %dx%d\n", mode->htotal, mode->vtotal);
 ret = regmap_write(tc->regmap, VPCTRL0,
      FIELD_PREP(VSDELAY, 0) |
      OPXLFMT_RGB888 | FRMSYNC_DISABLED | MSF_DISABLED);
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, HTIM01,
      FIELD_PREP(HBPR, ALIGN(left_margin, 2)) |
      FIELD_PREP(HPW, ALIGN(hsync_len, 2)));
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, HTIM02,
      FIELD_PREP(HDISPR, ALIGN(mode->hdisplay, 2)) |
      FIELD_PREP(HFPR, ALIGN(right_margin, 2)));
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, VTIM01,
      FIELD_PREP(VBPR, upper_margin) |
      FIELD_PREP(VSPR, vsync_len));
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, VTIM02,
      FIELD_PREP(VFPR, lower_margin) |
      FIELD_PREP(VDISPR, mode->vdisplay));
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, VFUEN0, VFUEN);
 if (ret)
  return ret;


 ret = regmap_write(tc->regmap, TSTCTL,
      FIELD_PREP(COLOR_R, 120) |
      FIELD_PREP(COLOR_G, 20) |
      FIELD_PREP(COLOR_B, 99) |
      ENI2CFILTER |
      FIELD_PREP(COLOR_BAR_MODE, COLOR_BAR_MODE_BARS));
 if (ret)
  return ret;


 vid_sync_dly = hsync_len + left_margin + mode->hdisplay;
 ret = regmap_write(tc->regmap, DP0_VIDSYNCDELAY,
   FIELD_PREP(THRESH_DLY, max_tu_symbol) |
   FIELD_PREP(VID_SYNC_DLY, vid_sync_dly));

 ret = regmap_write(tc->regmap, DP0_TOTALVAL,
      FIELD_PREP(H_TOTAL, mode->htotal) |
      FIELD_PREP(V_TOTAL, mode->vtotal));
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, DP0_STARTVAL,
      FIELD_PREP(H_START, left_margin + hsync_len) |
      FIELD_PREP(V_START, upper_margin + vsync_len));
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, DP0_ACTIVEVAL,
      FIELD_PREP(V_ACT, mode->vdisplay) |
      FIELD_PREP(H_ACT, mode->hdisplay));
 if (ret)
  return ret;

 dp0_syncval = FIELD_PREP(VS_WIDTH, vsync_len) |
        FIELD_PREP(HS_WIDTH, hsync_len);

 if (mode->flags & DRM_MODE_FLAG_NVSYNC)
  dp0_syncval |= SYNCVAL_VS_POL_ACTIVE_LOW;

 if (mode->flags & DRM_MODE_FLAG_NHSYNC)
  dp0_syncval |= SYNCVAL_HS_POL_ACTIVE_LOW;

 ret = regmap_write(tc->regmap, DP0_SYNCVAL, dp0_syncval);
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, DPIPXLFMT,
      VS_POL_ACTIVE_LOW | HS_POL_ACTIVE_LOW |
      DE_POL_ACTIVE_HIGH | SUB_CFG_TYPE_CONFIG1 |
      DPI_BPP_RGB888);
 if (ret)
  return ret;

 ret = regmap_write(tc->regmap, DP0_MISC,
      FIELD_PREP(MAX_TU_SYMBOL, max_tu_symbol) |
      FIELD_PREP(TU_SIZE, TU_SIZE_RECOMMENDED) |
      BPC_8);
 if (ret)
  return ret;

 return 0;
}
