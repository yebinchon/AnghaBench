
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_args {scalar_t__ origin_dev; int ti; scalar_t__ cache_dev; scalar_t__ metadata_dev; } ;


 int dm_put_device (int ,scalar_t__) ;
 int kfree (struct cache_args*) ;

__attribute__((used)) static void destroy_cache_args(struct cache_args *ca)
{
 if (ca->metadata_dev)
  dm_put_device(ca->ti, ca->metadata_dev);

 if (ca->cache_dev)
  dm_put_device(ca->ti, ca->cache_dev);

 if (ca->origin_dev)
  dm_put_device(ca->ti, ca->origin_dev);

 kfree(ca);
}
