
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct spread_spectrum_info {int dummy; } ;
struct bios_parser {int dummy; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;


 scalar_t__ ASIC_INTERNAL_SS_ON_DP ;
 scalar_t__ ASIC_INTERNAL_SS_ON_LVDS ;
 int BP_RESULT_BADINPUT ;
 int get_ss_info_from_internal_ss_info_tbl_V2_1 (struct bios_parser*,scalar_t__,struct spread_spectrum_info*) ;
 int get_ss_info_from_ss_info_table (struct bios_parser*,scalar_t__,struct spread_spectrum_info*) ;

__attribute__((used)) static enum bp_result get_ss_info_from_tbl(
 struct bios_parser *bp,
 uint32_t id,
 struct spread_spectrum_info *ss_info)
{
 if (!ss_info)
  return BP_RESULT_BADINPUT;

 if (id == ASIC_INTERNAL_SS_ON_DP || id == ASIC_INTERNAL_SS_ON_LVDS)
  return get_ss_info_from_ss_info_table(bp, id, ss_info);
 else
  return get_ss_info_from_internal_ss_info_tbl_V2_1(bp, id,
   ss_info);
}
