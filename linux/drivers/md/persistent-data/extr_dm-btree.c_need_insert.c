
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int nr_entries; } ;
struct btree_node {int * keys; TYPE_1__ header; } ;


 unsigned int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static bool need_insert(struct btree_node *node, uint64_t *keys,
   unsigned level, unsigned index)
{
        return ((index >= le32_to_cpu(node->header.nr_entries)) ||
  (le64_to_cpu(node->keys[index]) != keys[level]));
}
