
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_policy_node {unsigned int first_master; unsigned int last_master; unsigned int first_channel; unsigned int last_channel; } ;



void stp_policy_node_get_ranges(struct stp_policy_node *policy_node,
    unsigned int *mstart, unsigned int *mend,
    unsigned int *cstart, unsigned int *cend)
{
 *mstart = policy_node->first_master;
 *mend = policy_node->last_master;
 *cstart = policy_node->first_channel;
 *cend = policy_node->last_channel;
}
