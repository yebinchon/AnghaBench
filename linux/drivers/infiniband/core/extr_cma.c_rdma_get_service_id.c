
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sockaddr_ib {int sib_sid; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rdma_cm_id {scalar_t__ ps; } ;
typedef int __be64 ;


 scalar_t__ AF_IB ;
 scalar_t__ be16_to_cpu (int ) ;
 int cma_port (struct sockaddr*) ;
 int cpu_to_be64 (scalar_t__) ;

__be64 rdma_get_service_id(struct rdma_cm_id *id, struct sockaddr *addr)
{
 if (addr->sa_family == AF_IB)
  return ((struct sockaddr_ib *) addr)->sib_sid;

 return cpu_to_be64(((u64)id->ps << 16) + be16_to_cpu(cma_port(addr)));
}
