
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_btree_info {int tm; } ;
struct child {int block; } ;


 int dm_tm_unlock (int ,int ) ;

__attribute__((used)) static void exit_child(struct dm_btree_info *info, struct child *c)
{
 dm_tm_unlock(info->tm, c->block);
}
