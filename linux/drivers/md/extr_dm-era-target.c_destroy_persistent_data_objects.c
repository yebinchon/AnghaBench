
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int bm; int tm; int sm; } ;


 int dm_block_manager_destroy (int ) ;
 int dm_sm_destroy (int ) ;
 int dm_tm_destroy (int ) ;

__attribute__((used)) static void destroy_persistent_data_objects(struct era_metadata *md)
{
 dm_sm_destroy(md->sm);
 dm_tm_destroy(md->tm);
 dm_block_manager_destroy(md->bm);
}
