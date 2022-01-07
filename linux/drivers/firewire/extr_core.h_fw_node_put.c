
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_node {int ref_count; } ;


 int kfree (struct fw_node*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void fw_node_put(struct fw_node *node)
{
 if (refcount_dec_and_test(&node->ref_count))
  kfree(node);
}
