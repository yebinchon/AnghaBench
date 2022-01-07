
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct cache {TYPE_1__ features; } ;
typedef enum cache_metadata_mode { ____Placeholder_cache_metadata_mode } cache_metadata_mode ;



__attribute__((used)) static enum cache_metadata_mode get_cache_mode(struct cache *cache)
{
 return cache->features.mode;
}
