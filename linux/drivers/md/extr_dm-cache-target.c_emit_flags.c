
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_features {int metadata_version; int discard_passdown; scalar_t__ io_mode; } ;
struct cache {struct cache_features features; } ;
typedef int ssize_t ;


 int DMEMIT (char*,...) ;
 int DMERR (char*,int ,int) ;
 int cache_device_name (struct cache*) ;
 scalar_t__ passthrough_mode (struct cache*) ;
 scalar_t__ writeback_mode (struct cache*) ;
 scalar_t__ writethrough_mode (struct cache*) ;

__attribute__((used)) static void emit_flags(struct cache *cache, char *result,
         unsigned maxlen, ssize_t *sz_ptr)
{
 ssize_t sz = *sz_ptr;
 struct cache_features *cf = &cache->features;
 unsigned count = (cf->metadata_version == 2) + !cf->discard_passdown + 1;

 DMEMIT("%u ", count);

 if (cf->metadata_version == 2)
  DMEMIT("metadata2 ");

 if (writethrough_mode(cache))
  DMEMIT("writethrough ");

 else if (passthrough_mode(cache))
  DMEMIT("passthrough ");

 else if (writeback_mode(cache))
  DMEMIT("writeback ");

 else {
  DMEMIT("unknown ");
  DMERR("%s: internal error: unknown io mode: %d",
        cache_device_name(cache), (int) cf->io_mode);
 }

 if (!cf->discard_passdown)
  DMEMIT("no_discard_passdown ");

 *sz_ptr = sz;
}
