
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c4iw_id_table {int dummy; } ;


 int c4iw_id_free (struct c4iw_id_table*,int ) ;
 int pr_debug (char*,int ) ;

void c4iw_put_resource(struct c4iw_id_table *id_table, u32 entry)
{
 pr_debug("entry 0x%x\n", entry);
 c4iw_id_free(id_table, entry);
}
