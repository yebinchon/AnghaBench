
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_sock {int dummy; } ;
typedef void* __be32 ;
struct TYPE_2__ {void* ir_rmt_addr; void* ir_loc_addr; } ;


 TYPE_1__* inet_rsk (struct request_sock*) ;

__attribute__((used)) static inline void chtls_set_req_addr(struct request_sock *oreq,
          __be32 local_ip, __be32 peer_ip)
{
 inet_rsk(oreq)->ir_loc_addr = local_ip;
 inet_rsk(oreq)->ir_rmt_addr = peer_ip;
}
