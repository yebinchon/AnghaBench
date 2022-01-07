
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int bitset_info; int tm; } ;


 int dm_disk_bitset_init (int ,int *) ;
 int setup_era_array_info (struct era_metadata*) ;
 int setup_writeset_tree_info (struct era_metadata*) ;

__attribute__((used)) static void setup_infos(struct era_metadata *md)
{
 dm_disk_bitset_init(md->tm, &md->bitset_info);
 setup_writeset_tree_info(md);
 setup_era_array_info(md);
}
