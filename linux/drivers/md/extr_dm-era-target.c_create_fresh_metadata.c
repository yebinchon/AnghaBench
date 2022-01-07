
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int tm; int sm; int era_array_root; int era_array_info; int writeset_tree_root; int writeset_tree_info; int bm; } ;


 int DMERR (char*) ;
 int SUPERBLOCK_LOCATION ;
 int dm_array_empty (int *,int *) ;
 int dm_btree_empty (int *,int *) ;
 int dm_sm_destroy (int ) ;
 int dm_tm_create_with_sm (int ,int ,int *,int *) ;
 int dm_tm_destroy (int ) ;
 int setup_infos (struct era_metadata*) ;

__attribute__((used)) static int create_fresh_metadata(struct era_metadata *md)
{
 int r;

 r = dm_tm_create_with_sm(md->bm, SUPERBLOCK_LOCATION,
     &md->tm, &md->sm);
 if (r < 0) {
  DMERR("dm_tm_create_with_sm failed");
  return r;
 }

 setup_infos(md);

 r = dm_btree_empty(&md->writeset_tree_info, &md->writeset_tree_root);
 if (r) {
  DMERR("couldn't create new writeset tree");
  goto bad;
 }

 r = dm_array_empty(&md->era_array_info, &md->era_array_root);
 if (r) {
  DMERR("couldn't create era array");
  goto bad;
 }

 return 0;

bad:
 dm_sm_destroy(md->sm);
 dm_tm_destroy(md->tm);

 return r;
}
