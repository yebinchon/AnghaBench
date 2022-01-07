
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int bucket_lock; } ;
struct bkey {int dummy; } ;


 int __bch_bucket_alloc_set (struct cache_set*,unsigned int,struct bkey*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int bch_bucket_alloc_set(struct cache_set *c, unsigned int reserve,
    struct bkey *k, int n, bool wait)
{
 int ret;

 mutex_lock(&c->bucket_lock);
 ret = __bch_bucket_alloc_set(c, reserve, k, n, wait);
 mutex_unlock(&c->bucket_lock);
 return ret;
}
