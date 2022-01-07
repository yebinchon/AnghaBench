
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_entries; } ;
struct btree_node {TYPE_1__ header; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static unsigned merge_threshold(struct btree_node *n)
{
 return le32_to_cpu(n->header.max_entries) / 3;
}
