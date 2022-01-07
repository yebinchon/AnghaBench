
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;
struct bio {int dummy; } ;


 int accounted_begin (struct cache*,struct bio*) ;
 int generic_make_request (struct bio*) ;

__attribute__((used)) static void accounted_request(struct cache *cache, struct bio *bio)
{
 accounted_begin(cache, bio);
 generic_make_request(bio);
}
