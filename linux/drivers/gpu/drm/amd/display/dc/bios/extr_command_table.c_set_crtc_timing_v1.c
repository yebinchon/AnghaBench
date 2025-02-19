
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {scalar_t__ HSYNC_POSITIVE_POLARITY; scalar_t__ VSYNC_POSITIVE_POLARITY; scalar_t__ HORZ_COUNT_BY_TWO; scalar_t__ INTERLACE; } ;
struct bp_hw_crtc_timing_parameters {TYPE_2__ flags; scalar_t__ v_sync_start; scalar_t__ v_overscan_top; scalar_t__ v_overscan_bottom; scalar_t__ h_overscan_left; scalar_t__ h_overscan_right; scalar_t__ v_sync_width; scalar_t__ v_addressable; scalar_t__ v_total; scalar_t__ h_sync_width; scalar_t__ h_sync_start; scalar_t__ h_addressable; scalar_t__ h_total; int controller_id; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_8__ {void* usAccess; } ;
struct TYPE_9__ {TYPE_3__ susModeMiscInfo; void* usV_SyncStart; void* ucOverscanTop; void* ucOverscanBottom; void* ucOverscanLeft; void* ucOverscanRight; void* usV_SyncWidth; void* usV_Disp; void* usV_Total; void* usH_SyncWidth; void* usH_SyncStart; void* usH_Disp; void* usH_Total; void* ucCRTC; int member_0; } ;
struct TYPE_6__ {scalar_t__ (* controller_id_to_atom ) (int ,void**) ;} ;
typedef TYPE_4__ SET_CRTC_TIMING_PARAMETERS_PS_ALLOCATION ;


 int ATOM_DOUBLE_CLOCK_MODE ;
 int ATOM_HSYNC_POLARITY ;
 int ATOM_INTERLACE ;
 int ATOM_VSYNC_POLARITY ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_4__) ;
 int SetCRTC_Timing ;
 void* cpu_to_le16 (int) ;
 int le16_to_cpu (void*) ;
 scalar_t__ stub1 (int ,void**) ;

__attribute__((used)) static enum bp_result set_crtc_timing_v1(
 struct bios_parser *bp,
 struct bp_hw_crtc_timing_parameters *bp_params)
{
 enum bp_result result = BP_RESULT_FAILURE;
 SET_CRTC_TIMING_PARAMETERS_PS_ALLOCATION params = {0};
 uint8_t atom_controller_id;

 if (bp->cmd_helper->controller_id_to_atom(
   bp_params->controller_id, &atom_controller_id))
  params.ucCRTC = atom_controller_id;

 params.usH_Total = cpu_to_le16((uint16_t)(bp_params->h_total));
 params.usH_Disp = cpu_to_le16((uint16_t)(bp_params->h_addressable));
 params.usH_SyncStart = cpu_to_le16((uint16_t)(bp_params->h_sync_start));
 params.usH_SyncWidth = cpu_to_le16((uint16_t)(bp_params->h_sync_width));
 params.usV_Total = cpu_to_le16((uint16_t)(bp_params->v_total));
 params.usV_Disp = cpu_to_le16((uint16_t)(bp_params->v_addressable));
 params.usV_SyncStart =
   cpu_to_le16((uint16_t)(bp_params->v_sync_start));
 params.usV_SyncWidth =
   cpu_to_le16((uint16_t)(bp_params->v_sync_width));







 params.ucOverscanRight = (uint8_t)bp_params->h_overscan_right;
 params.ucOverscanLeft = (uint8_t)bp_params->h_overscan_left;
 params.ucOverscanBottom = (uint8_t)bp_params->v_overscan_bottom;
 params.ucOverscanTop = (uint8_t)bp_params->v_overscan_top;

 if (0 == bp_params->flags.HSYNC_POSITIVE_POLARITY)
  params.susModeMiscInfo.usAccess =
    cpu_to_le16(le16_to_cpu(params.susModeMiscInfo.usAccess) | ATOM_HSYNC_POLARITY);

 if (0 == bp_params->flags.VSYNC_POSITIVE_POLARITY)
  params.susModeMiscInfo.usAccess =
    cpu_to_le16(le16_to_cpu(params.susModeMiscInfo.usAccess) | ATOM_VSYNC_POLARITY);

 if (bp_params->flags.INTERLACE) {
  params.susModeMiscInfo.usAccess =
    cpu_to_le16(le16_to_cpu(params.susModeMiscInfo.usAccess) | ATOM_INTERLACE);
  params.usV_SyncStart =
    cpu_to_le16((uint16_t)(bp_params->v_sync_start + 1));
 }

 if (bp_params->flags.HORZ_COUNT_BY_TWO)
  params.susModeMiscInfo.usAccess =
    cpu_to_le16(le16_to_cpu(params.susModeMiscInfo.usAccess) | ATOM_DOUBLE_CLOCK_MODE);

 if (EXEC_BIOS_CMD_TABLE(SetCRTC_Timing, params))
  result = BP_RESULT_OK;

 return result;
}
