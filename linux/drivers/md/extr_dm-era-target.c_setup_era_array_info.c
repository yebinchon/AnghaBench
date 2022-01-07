
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int tm; int era_array_info; } ;
struct dm_btree_value_type {int size; int * equal; int * dec; int * inc; int * context; } ;
typedef int __le32 ;


 int dm_array_info_init (int *,int ,struct dm_btree_value_type*) ;

__attribute__((used)) static void setup_era_array_info(struct era_metadata *md)

{
 struct dm_btree_value_type vt;
 vt.context = ((void*)0);
 vt.size = sizeof(__le32);
 vt.inc = ((void*)0);
 vt.dec = ((void*)0);
 vt.equal = ((void*)0);

 dm_array_info_init(&md->era_array_info, md->tm, &vt);
}
