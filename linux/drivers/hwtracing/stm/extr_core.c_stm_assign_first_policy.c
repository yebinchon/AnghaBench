
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_policy_node {int dummy; } ;
struct stm_output {int dummy; } ;
struct stm_device {int dummy; } ;


 int EINVAL ;
 int stm_output_assign (struct stm_device*,unsigned int,struct stp_policy_node*,struct stm_output*) ;
 struct stp_policy_node* stp_policy_node_lookup (struct stm_device*,char*) ;
 int stp_policy_node_put (struct stp_policy_node*) ;

__attribute__((used)) static int
stm_assign_first_policy(struct stm_device *stm, struct stm_output *output,
   char **ids, unsigned int width)
{
 struct stp_policy_node *pn;
 int err, n;







 for (n = 0, pn = ((void*)0); ids[n] && !pn; n++)
  pn = stp_policy_node_lookup(stm, ids[n]);

 if (!pn)
  return -EINVAL;

 err = stm_output_assign(stm, width, pn, output);

 stp_policy_node_put(pn);

 return err;
}
