
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bios_parser {int dummy; } ;


 scalar_t__ ASIC_INTERNAL_SS_ON_DP ;
 scalar_t__ ASIC_INTERNAL_SS_ON_LVDS ;
 scalar_t__ get_ss_entry_number_from_internal_ss_info_tbl_v2_1 (struct bios_parser*,scalar_t__) ;
 scalar_t__ get_ss_entry_number_from_ss_info_tbl (struct bios_parser*,scalar_t__) ;

__attribute__((used)) static uint32_t get_ss_entry_number(struct bios_parser *bp, uint32_t id)
{
 if (id == ASIC_INTERNAL_SS_ON_DP || id == ASIC_INTERNAL_SS_ON_LVDS)
  return get_ss_entry_number_from_ss_info_tbl(bp, id);

 return get_ss_entry_number_from_internal_ss_info_tbl_v2_1(bp, id);
}
