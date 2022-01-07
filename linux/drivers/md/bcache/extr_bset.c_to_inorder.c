
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bset_tree {int extra; int size; } ;


 unsigned int __to_inorder (unsigned int,int ,int ) ;

__attribute__((used)) static unsigned int to_inorder(unsigned int j, struct bset_tree *t)
{
 return __to_inorder(j, t->size, t->extra);
}
