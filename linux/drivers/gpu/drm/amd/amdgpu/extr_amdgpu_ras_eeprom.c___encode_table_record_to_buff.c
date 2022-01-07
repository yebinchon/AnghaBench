
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeprom_table_record {unsigned char err_type; unsigned char bank; int ts; int offset; unsigned char mem_channel; unsigned char mcumc_id; int retired_page; } ;
struct amdgpu_ras_eeprom_control {int dummy; } ;
typedef int __le64 ;


 int cpu_to_le64 (int) ;
 int memcpy (unsigned char*,int *,int) ;

__attribute__((used)) static void __encode_table_record_to_buff(struct amdgpu_ras_eeprom_control *control,
       struct eeprom_table_record *record,
       unsigned char *buff)
{
 __le64 tmp = 0;
 int i = 0;


 buff[i++] = record->err_type;

 buff[i++] = record->bank;

 tmp = cpu_to_le64(record->ts);
 memcpy(buff + i, &tmp, 8);
 i += 8;

 tmp = cpu_to_le64((record->offset & 0xffffffffffff));
 memcpy(buff + i, &tmp, 6);
 i += 6;

 buff[i++] = record->mem_channel;
 buff[i++] = record->mcumc_id;

 tmp = cpu_to_le64((record->retired_page & 0xffffffffffff));
 memcpy(buff + i, &tmp, 6);
}
