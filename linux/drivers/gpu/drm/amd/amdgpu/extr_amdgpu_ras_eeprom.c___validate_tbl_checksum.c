
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeprom_table_record {int dummy; } ;
struct TYPE_2__ {int checksum; } ;
struct amdgpu_ras_eeprom_control {int tbl_byte_sum; TYPE_1__ tbl_hdr; } ;


 int DRM_WARN (char*,int) ;
 int __calc_tbl_byte_sum (struct amdgpu_ras_eeprom_control*,struct eeprom_table_record*,int) ;

__attribute__((used)) static bool __validate_tbl_checksum(struct amdgpu_ras_eeprom_control *control,
       struct eeprom_table_record *records, int num)
{
 control->tbl_byte_sum = __calc_tbl_byte_sum(control, records, num);

 if (control->tbl_hdr.checksum + (control->tbl_byte_sum % 256) != 256) {
  DRM_WARN("Checksum mismatch, checksum: %u ", control->tbl_hdr.checksum);
  return 0;
 }

 return 1;
}
