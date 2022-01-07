
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_sock {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {int ir_num; int ir_rmt_port; } ;


 TYPE_1__* inet_rsk (struct request_sock*) ;
 int ntohs (int ) ;

__attribute__((used)) static inline void chtls_set_req_port(struct request_sock *oreq,
          __be16 source, __be16 dest)
{
 inet_rsk(oreq)->ir_rmt_port = source;
 inet_rsk(oreq)->ir_num = ntohs(dest);
}
