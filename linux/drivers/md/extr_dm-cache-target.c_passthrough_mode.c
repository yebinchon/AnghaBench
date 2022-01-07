
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ io_mode; } ;
struct cache {TYPE_1__ features; } ;


 scalar_t__ CM_IO_PASSTHROUGH ;
 int unlikely (int) ;

__attribute__((used)) static inline bool passthrough_mode(struct cache *cache)
{
 return unlikely(cache->features.io_mode == CM_IO_PASSTHROUGH);
}
