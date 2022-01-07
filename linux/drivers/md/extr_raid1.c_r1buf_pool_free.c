
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resync_pages {int dummy; } ;
struct r1bio {int * bios; } ;
struct pool_info {int raid_disks; } ;


 int bio_put (int ) ;
 struct resync_pages* get_resync_pages (int ) ;
 int kfree (struct resync_pages*) ;
 int rbio_pool_free (struct r1bio*,void*) ;
 int resync_free_pages (struct resync_pages*) ;

__attribute__((used)) static void r1buf_pool_free(void *__r1_bio, void *data)
{
 struct pool_info *pi = data;
 int i;
 struct r1bio *r1bio = __r1_bio;
 struct resync_pages *rp = ((void*)0);

 for (i = pi->raid_disks; i--; ) {
  rp = get_resync_pages(r1bio->bios[i]);
  resync_free_pages(rp);
  bio_put(r1bio->bios[i]);
 }


 kfree(rp);

 rbio_pool_free(r1bio, data);
}
