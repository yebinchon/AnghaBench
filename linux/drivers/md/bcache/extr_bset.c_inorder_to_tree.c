
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bset_tree {int extra; int size; } ;


 unsigned int __inorder_to_tree (unsigned int,int ,int ) ;

__attribute__((used)) static unsigned int inorder_to_tree(unsigned int j, struct bset_tree *t)
{
 return __inorder_to_tree(j, t->size, t->extra);
}
