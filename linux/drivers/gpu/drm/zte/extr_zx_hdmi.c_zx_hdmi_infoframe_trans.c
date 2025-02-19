
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union hdmi_infoframe {int dummy; } hdmi_infoframe ;
typedef int u8 ;
struct zx_hdmi {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 scalar_t__ TPI_INFO_B0 ;
 int TPI_INFO_EN ;
 scalar_t__ TPI_INFO_FSEL ;
 int TPI_INFO_TRANS_EN ;
 int TPI_INFO_TRANS_RPT ;
 int ZX_HDMI_INFOFRAME_SIZE ;
 int hdmi_infoframe_pack (union hdmi_infoframe*,int *,int) ;
 int hdmi_writeb (struct zx_hdmi*,scalar_t__,int ) ;
 int hdmi_writeb_mask (struct zx_hdmi*,int ,int ,int ) ;

__attribute__((used)) static int zx_hdmi_infoframe_trans(struct zx_hdmi *hdmi,
       union hdmi_infoframe *frame, u8 fsel)
{
 u8 buffer[ZX_HDMI_INFOFRAME_SIZE];
 int num;
 int i;

 hdmi_writeb(hdmi, TPI_INFO_FSEL, fsel);

 num = hdmi_infoframe_pack(frame, buffer, ZX_HDMI_INFOFRAME_SIZE);
 if (num < 0) {
  DRM_DEV_ERROR(hdmi->dev, "failed to pack infoframe: %d\n", num);
  return num;
 }

 for (i = 0; i < num; i++)
  hdmi_writeb(hdmi, TPI_INFO_B0 + i, buffer[i]);

 hdmi_writeb_mask(hdmi, TPI_INFO_EN, TPI_INFO_TRANS_RPT,
    TPI_INFO_TRANS_RPT);
 hdmi_writeb_mask(hdmi, TPI_INFO_EN, TPI_INFO_TRANS_EN,
    TPI_INFO_TRANS_EN);

 return num;
}
