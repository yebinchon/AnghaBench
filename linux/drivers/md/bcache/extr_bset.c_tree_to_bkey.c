
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bset_tree {TYPE_1__* tree; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {int m; } ;


 struct bkey* cacheline_to_bkey (struct bset_tree*,int ,int ) ;
 int to_inorder (unsigned int,struct bset_tree*) ;

__attribute__((used)) static struct bkey *tree_to_bkey(struct bset_tree *t, unsigned int j)
{
 return cacheline_to_bkey(t, to_inorder(j, t), t->tree[j].m);
}
