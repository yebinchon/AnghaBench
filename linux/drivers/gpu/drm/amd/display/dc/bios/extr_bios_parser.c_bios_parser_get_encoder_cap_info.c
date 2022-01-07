
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct graphics_object_id {int dummy; } ;
struct dc_bios {int dummy; } ;
struct bp_encoder_cap_info {int HDMI_6GB_EN; int DP_HBR3_EN; int DP_HBR2_EN; } ;
struct bios_parser {int dummy; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_3__ {int usHDMI6GEn; int usHBR3En; int usHBR2En; } ;
typedef int ATOM_OBJECT ;
typedef TYPE_1__ ATOM_ENCODER_CAP_RECORD_V2 ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_NORECORD ;
 int BP_RESULT_OK ;
 int * get_bios_object (struct bios_parser*,struct graphics_object_id) ;
 TYPE_1__* get_encoder_cap_record (struct bios_parser*,int *) ;

__attribute__((used)) static enum bp_result bios_parser_get_encoder_cap_info(
 struct dc_bios *dcb,
 struct graphics_object_id object_id,
 struct bp_encoder_cap_info *info)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);
 ATOM_OBJECT *object;
 ATOM_ENCODER_CAP_RECORD_V2 *record = ((void*)0);

 if (!info)
  return BP_RESULT_BADINPUT;

 object = get_bios_object(bp, object_id);

 if (!object)
  return BP_RESULT_BADINPUT;

 record = get_encoder_cap_record(bp, object);
 if (!record)
  return BP_RESULT_NORECORD;

 info->DP_HBR2_EN = record->usHBR2En;
 info->DP_HBR3_EN = record->usHBR3En;
 info->HDMI_6GB_EN = record->usHDMI6GEn;
 return BP_RESULT_OK;
}
