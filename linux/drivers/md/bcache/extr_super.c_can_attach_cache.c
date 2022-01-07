
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ block_size; scalar_t__ bucket_size; scalar_t__ nr_in_set; } ;
struct cache_set {TYPE_2__ sb; } ;
struct TYPE_3__ {scalar_t__ block_size; scalar_t__ bucket_size; scalar_t__ nr_in_set; } ;
struct cache {TYPE_1__ sb; } ;



__attribute__((used)) static bool can_attach_cache(struct cache *ca, struct cache_set *c)
{
 return ca->sb.block_size == c->sb.block_size &&
  ca->sb.bucket_size == c->sb.bucket_size &&
  ca->sb.nr_in_set == c->sb.nr_in_set;
}
