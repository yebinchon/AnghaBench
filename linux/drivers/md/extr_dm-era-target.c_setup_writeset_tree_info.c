
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeset_disk {int dummy; } ;
struct dm_btree_value_type {int size; int equal; int dec; int inc; struct era_metadata* context; } ;
struct TYPE_2__ {int levels; int tm; struct dm_btree_value_type value_type; } ;
struct era_metadata {TYPE_1__ writeset_tree_info; int tm; } ;


 int ws_dec ;
 int ws_eq ;
 int ws_inc ;

__attribute__((used)) static void setup_writeset_tree_info(struct era_metadata *md)
{
 struct dm_btree_value_type *vt = &md->writeset_tree_info.value_type;
 md->writeset_tree_info.tm = md->tm;
 md->writeset_tree_info.levels = 1;
 vt->context = md;
 vt->size = sizeof(struct writeset_disk);
 vt->inc = ws_inc;
 vt->dec = ws_dec;
 vt->equal = ws_eq;
}
