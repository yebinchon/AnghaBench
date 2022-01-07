
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int hash; scalar_t__ sector; } ;


 int hlist_del_init (int *) ;
 int pr_debug (char*,unsigned long long) ;

__attribute__((used)) static inline void remove_hash(struct stripe_head *sh)
{
 pr_debug("remove_hash(), stripe %llu\n",
  (unsigned long long)sh->sector);

 hlist_del_init(&sh->hash);
}
