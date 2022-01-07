
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bset_tree {scalar_t__ data; } ;
typedef void bkey ;


 unsigned int BSET_CACHELINE ;

__attribute__((used)) static struct bkey *cacheline_to_bkey(struct bset_tree *t,
          unsigned int cacheline,
          unsigned int offset)
{
 return ((void *) t->data) + cacheline * BSET_CACHELINE + offset * 8;
}
