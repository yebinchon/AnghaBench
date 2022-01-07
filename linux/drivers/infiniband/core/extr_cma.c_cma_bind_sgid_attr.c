
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct ib_gid_attr const* sgid_attr; } ;
struct TYPE_6__ {TYPE_1__ dev_addr; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
struct TYPE_8__ {TYPE_3__ route; } ;
struct rdma_id_private {TYPE_4__ id; } ;
struct ib_gid_attr {int dummy; } ;


 int WARN_ON (struct ib_gid_attr const*) ;

__attribute__((used)) static void cma_bind_sgid_attr(struct rdma_id_private *id_priv,
          const struct ib_gid_attr *sgid_attr)
{
 WARN_ON(id_priv->id.route.addr.dev_addr.sgid_attr);
 id_priv->id.route.addr.dev_addr.sgid_attr = sgid_attr;
}
