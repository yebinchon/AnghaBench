
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_firmware_info {int dummy; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;
struct atom_data_revision {int major; int minor; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;


 int ATOM_COMMON_TABLE_HEADER ;
 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BP_RESULT_BADBIOSTABLE ;
 scalar_t__ DATA_TABLES (int ) ;
 int FirmwareInfo ;
 int GET_IMAGE (int,scalar_t__) ;
 int get_atom_data_table_revision (int,struct atom_data_revision*) ;
 int get_firmware_info_v1_4 (struct bios_parser*,struct dc_firmware_info*) ;
 int get_firmware_info_v2_1 (struct bios_parser*,struct dc_firmware_info*) ;
 int get_firmware_info_v2_2 (struct bios_parser*,struct dc_firmware_info*) ;
 int header ;

__attribute__((used)) static enum bp_result bios_parser_get_firmware_info(
 struct dc_bios *dcb,
 struct dc_firmware_info *info)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);
 enum bp_result result = BP_RESULT_BADBIOSTABLE;
 ATOM_COMMON_TABLE_HEADER *header;
 struct atom_data_revision revision;

 if (info && DATA_TABLES(FirmwareInfo)) {
  header = GET_IMAGE(ATOM_COMMON_TABLE_HEADER,
   DATA_TABLES(FirmwareInfo));
  get_atom_data_table_revision(header, &revision);
  switch (revision.major) {
  case 1:
   switch (revision.minor) {
   case 4:
    result = get_firmware_info_v1_4(bp, info);
    break;
   default:
    break;
   }
   break;

  case 2:
   switch (revision.minor) {
   case 1:
    result = get_firmware_info_v2_1(bp, info);
    break;
   case 2:
    result = get_firmware_info_v2_2(bp, info);
    break;
   default:
    break;
   }
   break;
  default:
   break;
  }
 }

 return result;
}
