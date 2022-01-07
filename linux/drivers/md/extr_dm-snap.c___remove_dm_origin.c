
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_origin {int hash_list; } ;


 int list_del (int *) ;

__attribute__((used)) static void __remove_dm_origin(struct dm_origin *o)
{
 list_del(&o->hash_list);
}
