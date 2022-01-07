
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int const id; } ;
struct dc_link {TYPE_4__ link_id; TYPE_2__* dc; TYPE_3__* link_enc; } ;
struct audio_support {int hdmi_audio_native; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum dc_detect_reason { ____Placeholder_dc_detect_reason } dc_detect_reason ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {TYPE_1__* res_pool; } ;
struct TYPE_5__ {struct audio_support audio_support; } ;




 int const CONNECTOR_ID_PCIE ;
 int DETECT_REASON_HPDRX ;
 int SIGNAL_TYPE_DVI_SINGLE_LINK ;
 int dm_helpers_is_dp_sink_present (struct dc_link*) ;
 int get_basic_signal_type (int ,TYPE_4__) ;

__attribute__((used)) static enum signal_type link_detect_sink(
 struct dc_link *link,
 enum dc_detect_reason reason)
{
 enum signal_type result = get_basic_signal_type(
  link->link_enc->id, link->link_id);
 if (link->link_id.id == CONNECTOR_ID_PCIE) {

 }

 switch (link->link_id.id) {
 case 128: {


  struct audio_support *aud_support = &link->dc->res_pool->audio_support;

  if (!aud_support->hdmi_audio_native)
   if (link->link_id.id == 128)
    result = SIGNAL_TYPE_DVI_SINGLE_LINK;
 }
 break;
 case 129: {



  if (reason != DETECT_REASON_HPDRX) {




   if (!dm_helpers_is_dp_sink_present(link))
    result = SIGNAL_TYPE_DVI_SINGLE_LINK;
  }
 }
 break;
 default:
 break;
 }

 return result;
}
