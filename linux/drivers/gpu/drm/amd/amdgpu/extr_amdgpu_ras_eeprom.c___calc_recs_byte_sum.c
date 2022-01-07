
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32_t ;
struct eeprom_table_record {int dummy; } ;



__attribute__((used)) static uint32_t __calc_recs_byte_sum(struct eeprom_table_record *records,
          int num)
{
 int i, j;
 uint32_t tbl_sum = 0;


 for (i = 0; i < num; i++) {
  struct eeprom_table_record *record = &records[i];

  for (j = 0; j < sizeof(*record); j++) {
   tbl_sum += *(((unsigned char *)record) + j);
  }
 }

 return tbl_sum;
}
