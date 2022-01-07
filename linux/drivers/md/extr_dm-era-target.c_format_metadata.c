
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int tm; int sm; } ;


 int create_fresh_metadata (struct era_metadata*) ;
 int dm_sm_destroy (int ) ;
 int dm_tm_destroy (int ) ;
 int write_superblock (struct era_metadata*) ;

__attribute__((used)) static int format_metadata(struct era_metadata *md)
{
 int r;

 r = create_fresh_metadata(md);
 if (r)
  return r;

 r = write_superblock(md);
 if (r) {
  dm_sm_destroy(md->sm);
  dm_tm_destroy(md->tm);
  return r;
 }

 return 0;
}
