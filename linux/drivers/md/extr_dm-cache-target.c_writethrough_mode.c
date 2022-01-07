
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ io_mode; } ;
struct cache {TYPE_1__ features; } ;


 scalar_t__ CM_IO_WRITETHROUGH ;

__attribute__((used)) static bool writethrough_mode(struct cache *cache)
{
 return cache->features.io_mode == CM_IO_WRITETHROUGH;
}
