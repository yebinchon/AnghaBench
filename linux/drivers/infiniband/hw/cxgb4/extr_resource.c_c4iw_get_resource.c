
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct c4iw_id_table {int dummy; } ;


 scalar_t__ c4iw_id_alloc (struct c4iw_id_table*) ;

u32 c4iw_get_resource(struct c4iw_id_table *id_table)
{
 u32 entry;
 entry = c4iw_id_alloc(id_table);
 if (entry == (u32)(-1))
  return 0;
 return entry;
}
