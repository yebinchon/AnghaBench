
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int nr_entries; } ;
struct btree_node {int * keys; TYPE_1__ header; } ;


 int ENODATA ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int lower_bound (struct btree_node*,scalar_t__) ;

__attribute__((used)) static int do_leaf(struct btree_node *n, uint64_t key, unsigned *index)
{
 int i = lower_bound(n, key);

 if ((i < 0) ||
     (i >= le32_to_cpu(n->header.nr_entries)) ||
     (le64_to_cpu(n->keys[i]) != key))
  return -ENODATA;

 *index = i;

 return 0;
}
