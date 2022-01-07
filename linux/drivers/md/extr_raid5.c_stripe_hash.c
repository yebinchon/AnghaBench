
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {struct hlist_head* stripe_hashtbl; } ;
struct hlist_head {int dummy; } ;
typedef int sector_t ;


 int HASH_MASK ;
 int STRIPE_SHIFT ;

__attribute__((used)) static inline struct hlist_head *stripe_hash(struct r5conf *conf, sector_t sect)
{
 int hash = (sect >> STRIPE_SHIFT) & HASH_MASK;
 return &conf->stripe_hashtbl[hash];
}
