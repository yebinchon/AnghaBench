
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct sockaddr {int dummy; } ;
struct rdma_dev_addr {scalar_t__ dev_type; scalar_t__ src_dev_addr; } ;
struct TYPE_5__ {int src_addr; struct rdma_dev_addr dev_addr; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct TYPE_7__ {scalar_t__ ps; int port_num; TYPE_2__ route; } ;
struct rdma_id_private {TYPE_4__* cma_dev; TYPE_3__ id; } ;
struct ib_gid_attr {int dummy; } ;
struct cma_req_info {int port; int device; } ;
typedef int gid ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_8__ {int* default_gid_type; } ;


 scalar_t__ ARPHRD_INFINIBAND ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct ib_gid_attr const*) ;
 int PTR_ERR (struct ib_gid_attr const*) ;
 scalar_t__ RDMA_PS_IPOIB ;
 int cma_attach_to_dev (struct rdma_id_private*,TYPE_4__*) ;
 int cma_bind_sgid_attr (struct rdma_id_private*,struct ib_gid_attr const*) ;
 struct ib_gid_attr* cma_validate_port (int ,int,int,union ib_gid*,struct rdma_id_private*) ;
 int lock ;
 int memcpy (union ib_gid*,scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rdma_addr_gid_offset (struct rdma_dev_addr*) ;
 int rdma_ip2gid (struct sockaddr*,union ib_gid*) ;
 scalar_t__ rdma_protocol_roce (int ,int) ;

__attribute__((used)) static int cma_ib_acquire_dev(struct rdma_id_private *id_priv,
         const struct rdma_id_private *listen_id_priv,
         struct cma_req_info *req)
{
 struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
 const struct ib_gid_attr *sgid_attr;
 enum ib_gid_type gid_type;
 union ib_gid gid;

 if (dev_addr->dev_type != ARPHRD_INFINIBAND &&
     id_priv->id.ps == RDMA_PS_IPOIB)
  return -EINVAL;

 if (rdma_protocol_roce(req->device, req->port))
  rdma_ip2gid((struct sockaddr *)&id_priv->id.route.addr.src_addr,
       &gid);
 else
  memcpy(&gid, dev_addr->src_dev_addr +
         rdma_addr_gid_offset(dev_addr), sizeof(gid));

 gid_type = listen_id_priv->cma_dev->default_gid_type[req->port - 1];
 sgid_attr = cma_validate_port(req->device, req->port,
          gid_type, &gid, id_priv);
 if (IS_ERR(sgid_attr))
  return PTR_ERR(sgid_attr);

 id_priv->id.port_num = req->port;
 cma_bind_sgid_attr(id_priv, sgid_attr);




 mutex_lock(&lock);
 cma_attach_to_dev(id_priv, listen_id_priv->cma_dev);
 mutex_unlock(&lock);
 return 0;
}
