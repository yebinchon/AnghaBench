
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_t_policy_node {int dummy; } ;
struct sys_t_output {int node; } ;
struct stm_output {struct sys_t_output* pdrv_private; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct sys_t_output* kzalloc (int,int ) ;
 int memcpy (int *,struct sys_t_policy_node*,int) ;

__attribute__((used)) static int sys_t_output_open(void *priv, struct stm_output *output)
{
 struct sys_t_policy_node *pn = priv;
 struct sys_t_output *opriv;

 opriv = kzalloc(sizeof(*opriv), GFP_ATOMIC);
 if (!opriv)
  return -ENOMEM;

 memcpy(&opriv->node, pn, sizeof(opriv->node));
 output->pdrv_private = opriv;

 return 0;
}
