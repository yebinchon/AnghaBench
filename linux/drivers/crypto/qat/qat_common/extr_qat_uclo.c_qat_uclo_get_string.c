
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_uof_strtable {unsigned int table_len; scalar_t__ strings; } ;



__attribute__((used)) static char *qat_uclo_get_string(struct icp_qat_uof_strtable *str_table,
     unsigned int str_offset)
{
 if ((!str_table->table_len) || (str_offset > str_table->table_len))
  return ((void*)0);
 return (char *)(((uintptr_t)(str_table->strings)) + str_offset);
}
