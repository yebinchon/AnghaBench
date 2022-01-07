
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct cea_sad {int byte2; int freq; scalar_t__ channels; int format; } ;
typedef struct cea_sad uint8_t ;
typedef int uint16_t ;
struct edid {TYPE_5__* detailed_timings; int mfg_year; int mfg_week; int serial; scalar_t__* prod_code; scalar_t__* mfg_id; } ;
struct dc_edid_caps {int manufacturer_id; int product_id; char* display_name; int audio_mode_count; struct cea_sad speaker_flags; TYPE_6__* audio_modes; int edid_hdmi; int manufacture_year; int manufacture_week; int serial_number; } ;
struct dc_edid {scalar_t__ raw_edid; } ;
struct dc_context {int dummy; } ;
typedef enum dc_edid_status { ____Placeholder_dc_edid_status } dc_edid_status ;
struct TYPE_12__ {int sample_size; int sample_rate; scalar_t__ channel_count; int format_code; } ;
struct TYPE_7__ {char* str; } ;
struct TYPE_8__ {TYPE_1__ str; } ;
struct TYPE_9__ {int type; TYPE_2__ data; } ;
struct TYPE_10__ {TYPE_3__ other_data; } ;
struct TYPE_11__ {TYPE_4__ data; } ;


 int DC_MAX_AUDIO_DESC_COUNT ;
 struct cea_sad DEFAULT_SPEAKER_LOCATION ;
 int DRM_ERROR (char*,int) ;
 int DRM_INFO (char*,int) ;
 int EDID_BAD_CHECKSUM ;
 int EDID_BAD_INPUT ;
 int EDID_OK ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 int drm_edid_is_valid (struct edid*) ;
 int drm_edid_to_sad (struct edid*,struct cea_sad**) ;
 int drm_edid_to_speaker_allocation (struct edid*,struct cea_sad**) ;
 int kfree (struct cea_sad*) ;

enum dc_edid_status dm_helpers_parse_edid_caps(
  struct dc_context *ctx,
  const struct dc_edid *edid,
  struct dc_edid_caps *edid_caps)
{
 struct edid *edid_buf = (struct edid *) edid->raw_edid;
 struct cea_sad *sads;
 int sad_count = -1;
 int sadb_count = -1;
 int i = 0;
 int j = 0;
 uint8_t *sadb = ((void*)0);

 enum dc_edid_status result = EDID_OK;

 if (!edid_caps || !edid)
  return EDID_BAD_INPUT;

 if (!drm_edid_is_valid(edid_buf))
  result = EDID_BAD_CHECKSUM;

 edid_caps->manufacturer_id = (uint16_t) edid_buf->mfg_id[0] |
     ((uint16_t) edid_buf->mfg_id[1])<<8;
 edid_caps->product_id = (uint16_t) edid_buf->prod_code[0] |
     ((uint16_t) edid_buf->prod_code[1])<<8;
 edid_caps->serial_number = edid_buf->serial;
 edid_caps->manufacture_week = edid_buf->mfg_week;
 edid_caps->manufacture_year = edid_buf->mfg_year;



 for (i = 0; i < 4; i++) {
  if (edid_buf->detailed_timings[i].data.other_data.type == 0xfc) {
   while (j < 13 && edid_buf->detailed_timings[i].data.other_data.data.str.str[j]) {
    if (edid_buf->detailed_timings[i].data.other_data.data.str.str[j] == '\n')
     break;

    edid_caps->display_name[j] =
     edid_buf->detailed_timings[i].data.other_data.data.str.str[j];
    j++;
   }
  }
 }

 edid_caps->edid_hdmi = drm_detect_hdmi_monitor(
   (struct edid *) edid->raw_edid);

 sad_count = drm_edid_to_sad((struct edid *) edid->raw_edid, &sads);
 if (sad_count <= 0) {
  DRM_INFO("SADs count is: %d, don't need to read it\n",
    sad_count);
  return result;
 }

 edid_caps->audio_mode_count = sad_count < DC_MAX_AUDIO_DESC_COUNT ? sad_count : DC_MAX_AUDIO_DESC_COUNT;
 for (i = 0; i < edid_caps->audio_mode_count; ++i) {
  struct cea_sad *sad = &sads[i];

  edid_caps->audio_modes[i].format_code = sad->format;
  edid_caps->audio_modes[i].channel_count = sad->channels + 1;
  edid_caps->audio_modes[i].sample_rate = sad->freq;
  edid_caps->audio_modes[i].sample_size = sad->byte2;
 }

 sadb_count = drm_edid_to_speaker_allocation((struct edid *) edid->raw_edid, &sadb);

 if (sadb_count < 0) {
  DRM_ERROR("Couldn't read Speaker Allocation Data Block: %d\n", sadb_count);
  sadb_count = 0;
 }

 if (sadb_count)
  edid_caps->speaker_flags = sadb[0];
 else
  edid_caps->speaker_flags = DEFAULT_SPEAKER_LOCATION;

 kfree(sads);
 kfree(sadb);

 return result;
}
