
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int port_num; int device; } ;


 int ECONNREFUSED ;
 int IB_CM_REJ_CONSUMER_DEFINED ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ rdma_ib_or_roce (int ,int ) ;
 scalar_t__ rdma_protocol_iwarp (int ,int ) ;

bool rdma_is_consumer_reject(struct rdma_cm_id *id, int reason)
{
 if (rdma_ib_or_roce(id->device, id->port_num))
  return reason == IB_CM_REJ_CONSUMER_DEFINED;

 if (rdma_protocol_iwarp(id->device, id->port_num))
  return reason == -ECONNREFUSED;

 WARN_ON_ONCE(1);
 return 0;
}
