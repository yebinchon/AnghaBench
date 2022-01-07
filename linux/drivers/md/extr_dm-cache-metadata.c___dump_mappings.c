
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int root; int info; } ;


 int __dump_mapping ;
 int dm_array_walk (int *,int ,int ,int *) ;

__attribute__((used)) static int __dump_mappings(struct dm_cache_metadata *cmd)
{
 return dm_array_walk(&cmd->info, cmd->root, __dump_mapping, ((void*)0));
}
