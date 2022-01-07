
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int offset44; } ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_req_set_retry_count(struct cm_req_msg *req_msg,
       u8 retry_count)
{
 req_msg->offset44 = cpu_to_be32((retry_count & 0x7) |
       (be32_to_cpu(req_msg->offset44) & 0xFFFFFFF8));
}
