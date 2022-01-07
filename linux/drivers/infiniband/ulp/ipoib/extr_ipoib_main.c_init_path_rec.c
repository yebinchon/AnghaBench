
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {int numb_path; int traffic_class; int pkey; int sgid; TYPE_1__ dgid; int rec_type; } ;
struct ipoib_path {TYPE_2__ pathrec; int dev; } ;
struct ipoib_dev_priv {TYPE_4__* broadcast; int pkey; int local_gid; int port; int ca; int dev; } ;
struct TYPE_7__ {int traffic_class; } ;
struct TYPE_8__ {TYPE_3__ mcmember; } ;


 int SA_PATH_REC_TYPE_IB ;
 int SA_PATH_REC_TYPE_OPA ;
 int cpu_to_be16 (int ) ;
 int memcpy (int ,void*,int) ;
 scalar_t__ rdma_cap_opa_ah (int ,int ) ;

__attribute__((used)) static void init_path_rec(struct ipoib_dev_priv *priv, struct ipoib_path *path,
     void *gid)
{
 path->dev = priv->dev;

 if (rdma_cap_opa_ah(priv->ca, priv->port))
  path->pathrec.rec_type = SA_PATH_REC_TYPE_OPA;
 else
  path->pathrec.rec_type = SA_PATH_REC_TYPE_IB;

 memcpy(path->pathrec.dgid.raw, gid, sizeof(union ib_gid));
 path->pathrec.sgid = priv->local_gid;
 path->pathrec.pkey = cpu_to_be16(priv->pkey);
 path->pathrec.numb_path = 1;
 path->pathrec.traffic_class = priv->broadcast->mcmember.traffic_class;
}
