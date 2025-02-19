
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct eeprom_table_record {int dummy; } ;
struct TYPE_2__ {int checksum; } ;
struct amdgpu_ras_eeprom_control {int tbl_byte_sum; TYPE_1__ tbl_hdr; } ;


 scalar_t__ __calc_tbl_byte_sum (struct amdgpu_ras_eeprom_control*,struct eeprom_table_record*,int) ;

__attribute__((used)) static void __update_tbl_checksum(struct amdgpu_ras_eeprom_control *control,
      struct eeprom_table_record *records, int num,
      uint32_t old_hdr_byte_sum)
{
 control->tbl_byte_sum -= old_hdr_byte_sum;
 control->tbl_byte_sum += __calc_tbl_byte_sum(control, records, num);

 control->tbl_hdr.checksum = 256 - (control->tbl_byte_sum % 256);
}
