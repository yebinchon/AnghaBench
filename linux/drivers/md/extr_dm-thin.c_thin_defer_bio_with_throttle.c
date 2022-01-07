
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {struct pool* pool; } ;
struct pool {int throttle; } ;
struct bio {int dummy; } ;


 int thin_defer_bio (struct thin_c*,struct bio*) ;
 int throttle_lock (int *) ;
 int throttle_unlock (int *) ;

__attribute__((used)) static void thin_defer_bio_with_throttle(struct thin_c *tc, struct bio *bio)
{
 struct pool *pool = tc->pool;

 throttle_lock(&pool->throttle);
 thin_defer_bio(tc, bio);
 throttle_unlock(&pool->throttle);
}
