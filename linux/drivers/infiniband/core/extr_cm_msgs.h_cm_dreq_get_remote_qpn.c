
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_dreq_msg {int offset8; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline __be32 cm_dreq_get_remote_qpn(struct cm_dreq_msg *dreq_msg)
{
 return cpu_to_be32(be32_to_cpu(dreq_msg->offset8) >> 8);
}
