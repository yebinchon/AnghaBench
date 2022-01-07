
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeprom_table_record {unsigned char err_type; unsigned char bank; int ts; int offset; unsigned char mem_channel; unsigned char mcumc_id; int retired_page; } ;
struct amdgpu_ras_eeprom_control {int dummy; } ;
typedef int __le64 ;


 int le64_to_cpu (int ) ;
 int memcpy (int *,unsigned char*,int) ;

__attribute__((used)) static void __decode_table_record_from_buff(struct amdgpu_ras_eeprom_control *control,
         struct eeprom_table_record *record,
         unsigned char *buff)
{
 __le64 tmp = 0;
 int i = 0;


 record->err_type = buff[i++];

 record->bank = buff[i++];

 memcpy(&tmp, buff + i, 8);
 record->ts = le64_to_cpu(tmp);
 i += 8;

 memcpy(&tmp, buff + i, 6);
 record->offset = (le64_to_cpu(tmp) & 0xffffffffffff);
 i += 6;

 buff[i++] = record->mem_channel;
 buff[i++] = record->mcumc_id;

 memcpy(&tmp, buff + i, 6);
 record->retired_page = (le64_to_cpu(tmp) & 0xffffffffffff);
}
