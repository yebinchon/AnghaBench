
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bset_tree {scalar_t__ data; } ;
struct bkey {int dummy; } ;


 int BSET_CACHELINE ;

__attribute__((used)) static unsigned int bkey_to_cacheline(struct bset_tree *t, struct bkey *k)
{
 return ((void *) k - (void *) t->data) / BSET_CACHELINE;
}
