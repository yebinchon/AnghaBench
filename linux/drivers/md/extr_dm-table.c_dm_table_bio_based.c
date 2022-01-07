
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int dummy; } ;


 int __table_type_bio_based (int ) ;
 int dm_table_get_type (struct dm_table*) ;

bool dm_table_bio_based(struct dm_table *t)
{
 return __table_type_bio_based(dm_table_get_type(t));
}
