
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b; } ;
struct sys_t_policy_node {TYPE_1__ uuid; } ;


 int generate_random_uuid (int ) ;

__attribute__((used)) static void sys_t_policy_node_init(void *priv)
{
 struct sys_t_policy_node *pn = priv;

 generate_random_uuid(pn->uuid.b);
}
