
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_2__ {int route_resolved; } ;
struct sa_path_rec {scalar_t__ rec_type; TYPE_1__ roce; int dgid; int sgid; } ;
struct rdma_dev_addr {scalar_t__ network; struct ib_gid_attr const* sgid_attr; int * net; } ;
struct ib_gid_attr {int ndev; } ;


 int EINVAL ;
 scalar_t__ RDMA_NETWORK_IPV4 ;
 scalar_t__ RDMA_NETWORK_IPV6 ;
 scalar_t__ SA_PATH_REC_TYPE_ROCE_V2 ;
 int addr_resolve (struct sockaddr*,struct sockaddr*,struct rdma_dev_addr*,int,int,int ) ;
 int init_net ;
 int rdma_gid2ip (struct sockaddr*,int *) ;

int roce_resolve_route_from_path(struct sa_path_rec *rec,
     const struct ib_gid_attr *attr)
{
 union {
  struct sockaddr _sockaddr;
  struct sockaddr_in _sockaddr_in;
  struct sockaddr_in6 _sockaddr_in6;
 } sgid, dgid;
 struct rdma_dev_addr dev_addr = {};
 int ret;

 if (rec->roce.route_resolved)
  return 0;

 rdma_gid2ip((struct sockaddr *)&sgid, &rec->sgid);
 rdma_gid2ip((struct sockaddr *)&dgid, &rec->dgid);

 if (sgid._sockaddr.sa_family != dgid._sockaddr.sa_family)
  return -EINVAL;

 if (!attr || !attr->ndev)
  return -EINVAL;

 dev_addr.net = &init_net;
 dev_addr.sgid_attr = attr;

 ret = addr_resolve((struct sockaddr *)&sgid, (struct sockaddr *)&dgid,
      &dev_addr, 0, 1, 0);
 if (ret)
  return ret;

 if ((dev_addr.network == RDMA_NETWORK_IPV4 ||
      dev_addr.network == RDMA_NETWORK_IPV6) &&
     rec->rec_type != SA_PATH_REC_TYPE_ROCE_V2)
  return -EINVAL;

 rec->roce.route_resolved = 1;
 return 0;
}
