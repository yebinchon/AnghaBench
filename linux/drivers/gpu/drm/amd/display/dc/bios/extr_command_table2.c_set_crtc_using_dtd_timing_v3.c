
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct set_crtc_using_dtd_timing_parameters {void* modemiscinfo; void* v_syncoffset; void* v_syncwidth; void* h_syncwidth; void* h_syncoffset; void* v_blanking_time; void* v_size; void* h_blanking_time; void* h_size; int crtc_id; int member_0; } ;
struct TYPE_4__ {scalar_t__ HSYNC_POSITIVE_POLARITY; scalar_t__ VSYNC_POSITIVE_POLARITY; scalar_t__ HORZ_COUNT_BY_TWO; scalar_t__ INTERLACE; } ;
struct bp_hw_crtc_timing_parameters {TYPE_2__ flags; scalar_t__ v_sync_width; scalar_t__ v_addressable; scalar_t__ v_sync_start; scalar_t__ h_sync_width; scalar_t__ h_addressable; scalar_t__ h_sync_start; scalar_t__ v_total; scalar_t__ h_total; int controller_id; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_3__ {scalar_t__ (* controller_id_to_atom ) (int ,int *) ;} ;


 int ATOM_HSYNC_POLARITY ;
 int ATOM_INTERLACE ;
 int ATOM_VSYNC_POLARITY ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,struct set_crtc_using_dtd_timing_parameters) ;
 void* cpu_to_le16 (int) ;
 int le16_to_cpu (void*) ;
 int setcrtc_usingdtdtiming ;
 scalar_t__ stub1 (int ,int *) ;

__attribute__((used)) static enum bp_result set_crtc_using_dtd_timing_v3(
 struct bios_parser *bp,
 struct bp_hw_crtc_timing_parameters *bp_params)
{
 enum bp_result result = BP_RESULT_FAILURE;
 struct set_crtc_using_dtd_timing_parameters params = {0};
 uint8_t atom_controller_id;

 if (bp->cmd_helper->controller_id_to_atom(
   bp_params->controller_id, &atom_controller_id))
  params.crtc_id = atom_controller_id;


 params.h_size = cpu_to_le16((uint16_t)bp_params->h_addressable);

 params.h_blanking_time =
   cpu_to_le16((uint16_t)(bp_params->h_total -
     bp_params->h_addressable));

 params.v_size = cpu_to_le16((uint16_t)bp_params->v_addressable);

 params.v_blanking_time =
   cpu_to_le16((uint16_t)(bp_params->v_total -
     bp_params->v_addressable));




 params.h_syncoffset =
   cpu_to_le16((uint16_t)(bp_params->h_sync_start -
     bp_params->h_addressable));
 params.h_syncwidth = cpu_to_le16((uint16_t)bp_params->h_sync_width);




 params.v_syncoffset =
   cpu_to_le16((uint16_t)(bp_params->v_sync_start -
     bp_params->v_addressable));
 params.v_syncwidth = cpu_to_le16((uint16_t)bp_params->v_sync_width);






 if (bp_params->flags.HSYNC_POSITIVE_POLARITY == 0)
  params.modemiscinfo =
    cpu_to_le16(le16_to_cpu(params.modemiscinfo) |
      ATOM_HSYNC_POLARITY);

 if (bp_params->flags.VSYNC_POSITIVE_POLARITY == 0)
  params.modemiscinfo =
    cpu_to_le16(le16_to_cpu(params.modemiscinfo) |
      ATOM_VSYNC_POLARITY);

 if (bp_params->flags.INTERLACE) {
  params.modemiscinfo =
    cpu_to_le16(le16_to_cpu(params.modemiscinfo) |
      ATOM_INTERLACE);
  {







   params.v_syncoffset =
    cpu_to_le16(le16_to_cpu(params.v_syncoffset) +
      1);

  }
 }

 if (bp_params->flags.HORZ_COUNT_BY_TWO)
  params.modemiscinfo =
   cpu_to_le16(le16_to_cpu(params.modemiscinfo) |
     0x100);

 if (EXEC_BIOS_CMD_TABLE(setcrtc_usingdtdtiming, params))
  result = BP_RESULT_OK;

 return result;
}
