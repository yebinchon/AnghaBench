
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bset_tree {int * prev; } ;
struct bkey {int dummy; } ;


 struct bkey* cacheline_to_bkey (struct bset_tree*,unsigned int,int ) ;

__attribute__((used)) static struct bkey *table_to_bkey(struct bset_tree *t, unsigned int cacheline)
{
 return cacheline_to_bkey(t, cacheline, t->prev[cacheline]);
}
