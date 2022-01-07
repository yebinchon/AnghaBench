
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_req_msg {int offset32; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_req_set_local_qpn(struct cm_req_msg *req_msg, __be32 qpn)
{
 req_msg->offset32 = cpu_to_be32((be32_to_cpu(qpn) << 8) |
      (be32_to_cpu(req_msg->offset32) &
       0x000000FF));
}
