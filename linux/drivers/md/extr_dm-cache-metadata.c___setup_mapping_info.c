
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int tm; int hint_info; scalar_t__ policy_hint_size; int info; } ;
struct dm_btree_value_type {int size; int * equal; int * dec; int * inc; int * context; } ;
typedef int __le64 ;
typedef int __le32 ;


 int dm_array_info_init (int *,int ,struct dm_btree_value_type*) ;

__attribute__((used)) static void __setup_mapping_info(struct dm_cache_metadata *cmd)
{
 struct dm_btree_value_type vt;

 vt.context = ((void*)0);
 vt.size = sizeof(__le64);
 vt.inc = ((void*)0);
 vt.dec = ((void*)0);
 vt.equal = ((void*)0);
 dm_array_info_init(&cmd->info, cmd->tm, &vt);

 if (cmd->policy_hint_size) {
  vt.size = sizeof(__le32);
  dm_array_info_init(&cmd->hint_info, cmd->tm, &vt);
 }
}
