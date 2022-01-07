
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_drm_infoframe {int dummy; } ;
struct drm_connector_state {TYPE_1__* connector; int hdr_output_metadata; } ;
struct dc_info_packet {int hb0; int hb1; int hb2; unsigned char* sb; int hb3; int valid; } ;
typedef int ssize_t ;
typedef int buf ;
struct TYPE_2__ {int connector_type; } ;





 int DUMP_PREFIX_NONE ;
 int EINVAL ;
 int KERN_DEBUG ;
 int drm_hdmi_infoframe_set_hdr_metadata (struct hdmi_drm_infoframe*,struct drm_connector_state const*) ;
 int hdmi_drm_infoframe_pack_only (struct hdmi_drm_infoframe*,unsigned char*,int) ;
 int memcpy (int*,unsigned char*,int) ;
 int memset (struct dc_info_packet*,int ,int) ;
 int print_hex_dump (int ,char*,int ,int,int,int*,int,int) ;

__attribute__((used)) static int fill_hdr_info_packet(const struct drm_connector_state *state,
    struct dc_info_packet *out)
{
 struct hdmi_drm_infoframe frame;
 unsigned char buf[30];
 ssize_t len;
 int ret, i;

 memset(out, 0, sizeof(*out));

 if (!state->hdr_output_metadata)
  return 0;

 ret = drm_hdmi_infoframe_set_hdr_metadata(&frame, state);
 if (ret)
  return ret;

 len = hdmi_drm_infoframe_pack_only(&frame, buf, sizeof(buf));
 if (len < 0)
  return (int)len;


 if (len != 30)
  return -EINVAL;


 switch (state->connector->connector_type) {
 case 129:
  out->hb0 = 0x87;
  out->hb1 = 0x01;
  out->hb2 = 0x1A;
  out->sb[0] = buf[3];
  i = 1;
  break;

 case 130:
 case 128:
  out->hb0 = 0x00;
  out->hb1 = 0x87;
  out->hb2 = 0x1D;
  out->hb3 = (0x13 << 2);
  out->sb[0] = 0x01;
  out->sb[1] = 0x1A;
  i = 2;
  break;

 default:
  return -EINVAL;
 }

 memcpy(&out->sb[i], &buf[4], 26);
 out->valid = 1;

 print_hex_dump(KERN_DEBUG, "HDR SB:", DUMP_PREFIX_NONE, 16, 1, out->sb,
         sizeof(out->sb), 0);

 return 0;
}
