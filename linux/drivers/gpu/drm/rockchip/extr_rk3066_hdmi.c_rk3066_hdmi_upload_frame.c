
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union hdmi_infoframe {int dummy; } hdmi_infoframe ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct rk3066_hdmi {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int packed_frame ;


 int HDMI_CP_AUTO_SEND_CTRL ;
 scalar_t__ HDMI_CP_BUF_ACC_HB0 ;
 scalar_t__ HDMI_CP_BUF_INDEX ;
 int HDMI_MAXIMUM_INFO_FRAME_SIZE ;
 scalar_t__ hdmi_infoframe_pack (union hdmi_infoframe*,scalar_t__*,int) ;
 int hdmi_modb (struct rk3066_hdmi*,int ,scalar_t__,scalar_t__) ;
 int hdmi_writeb (struct rk3066_hdmi*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
rk3066_hdmi_upload_frame(struct rk3066_hdmi *hdmi, int setup_rc,
    union hdmi_infoframe *frame, u32 frame_index,
    u32 mask, u32 disable, u32 enable)
{
 if (mask)
  hdmi_modb(hdmi, HDMI_CP_AUTO_SEND_CTRL, mask, disable);

 hdmi_writeb(hdmi, HDMI_CP_BUF_INDEX, frame_index);

 if (setup_rc >= 0) {
  u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
  ssize_t rc, i;

  rc = hdmi_infoframe_pack(frame, packed_frame,
      sizeof(packed_frame));
  if (rc < 0)
   return rc;

  for (i = 0; i < rc; i++)
   hdmi_writeb(hdmi, HDMI_CP_BUF_ACC_HB0 + i * 4,
        packed_frame[i]);

  if (mask)
   hdmi_modb(hdmi, HDMI_CP_AUTO_SEND_CTRL, mask, enable);
 }

 return setup_rc;
}
