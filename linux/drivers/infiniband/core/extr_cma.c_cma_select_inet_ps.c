
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ps; } ;
struct rdma_id_private {TYPE_1__ id; } ;
typedef enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;







__attribute__((used)) static enum rdma_ucm_port_space
cma_select_inet_ps(struct rdma_id_private *id_priv)
{
 switch (id_priv->id.ps) {
 case 129:
 case 128:
 case 130:
 case 131:
  return id_priv->id.ps;
 default:

  return 0;
 }
}
