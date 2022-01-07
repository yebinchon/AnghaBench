
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct cache_set {struct hlist_head* bucket_hash; } ;
struct bkey {int dummy; } ;


 int BUCKET_HASH_BITS ;
 int PTR_HASH (struct cache_set*,struct bkey*) ;
 size_t hash_32 (int ,int ) ;

__attribute__((used)) static struct hlist_head *mca_hash(struct cache_set *c, struct bkey *k)
{
 return &c->bucket_hash[hash_32(PTR_HASH(c, k), BUCKET_HASH_BITS)];
}
