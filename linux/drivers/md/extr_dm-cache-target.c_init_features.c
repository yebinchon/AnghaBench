
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_features {int metadata_version; int discard_passdown; int io_mode; int mode; } ;


 int CM_IO_WRITEBACK ;
 int CM_WRITE ;

__attribute__((used)) static void init_features(struct cache_features *cf)
{
 cf->mode = CM_WRITE;
 cf->io_mode = CM_IO_WRITEBACK;
 cf->metadata_version = 1;
 cf->discard_passdown = 1;
}
