
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_policy_node {void* priv; } ;



void *stp_policy_node_priv(struct stp_policy_node *pn)
{
 if (!pn)
  return ((void*)0);

 return pn->priv;
}
