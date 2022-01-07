
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int offset36; } ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_req_set_init_depth(struct cm_req_msg *req_msg,
      u8 init_depth)
{
 req_msg->offset36 = cpu_to_be32(init_depth |
     (be32_to_cpu(req_msg->offset36) &
      0xFFFFFF00));
}
