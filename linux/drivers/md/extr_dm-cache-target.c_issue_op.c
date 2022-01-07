
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;
struct bio {int dummy; } ;


 int accounted_request (struct cache*,struct bio*) ;

__attribute__((used)) static void issue_op(struct bio *bio, void *context)
{
 struct cache *cache = context;
 accounted_request(cache, bio);
}
