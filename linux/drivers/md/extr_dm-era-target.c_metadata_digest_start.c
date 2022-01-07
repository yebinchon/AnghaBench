
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int tm; } ;
struct digest {scalar_t__ step; int info; } ;


 int dm_disk_bitset_init (int ,int *) ;
 int memset (struct digest*,int ,int) ;
 scalar_t__ metadata_digest_lookup_writeset ;

__attribute__((used)) static int metadata_digest_start(struct era_metadata *md, struct digest *d)
{
 if (d->step)
  return 0;

 memset(d, 0, sizeof(*d));





 dm_disk_bitset_init(md->tm, &d->info);
 d->step = metadata_digest_lookup_writeset;

 return 0;
}
