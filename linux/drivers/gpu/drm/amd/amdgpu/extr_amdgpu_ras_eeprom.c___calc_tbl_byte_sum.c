
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct eeprom_table_record {int dummy; } ;
struct amdgpu_ras_eeprom_control {int dummy; } ;


 scalar_t__ __calc_hdr_byte_sum (struct amdgpu_ras_eeprom_control*) ;
 scalar_t__ __calc_recs_byte_sum (struct eeprom_table_record*,int) ;

__attribute__((used)) static inline uint32_t __calc_tbl_byte_sum(struct amdgpu_ras_eeprom_control *control,
      struct eeprom_table_record *records, int num)
{
 return __calc_hdr_byte_sum(control) + __calc_recs_byte_sum(records, num);
}
