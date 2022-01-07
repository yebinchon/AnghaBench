
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct btree_node {int dummy; } ;


 int bsearch (struct btree_node*,int ,int) ;

__attribute__((used)) static int upper_bound(struct btree_node *n, uint64_t key)
{
 return bsearch(n, key, 1);
}
