
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ci_name; } ;
struct TYPE_4__ {TYPE_1__ cg_item; } ;
struct stp_policy_node {TYPE_2__ group; } ;



__attribute__((used)) static inline char *stp_policy_node_name(struct stp_policy_node *policy_node)
{
 return policy_node->group.cg_item.ci_name ? : "<none>";
}
