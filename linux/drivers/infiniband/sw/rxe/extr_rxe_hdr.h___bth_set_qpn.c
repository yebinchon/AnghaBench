
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_bth {int qpn; } ;


 int BTH_QPN_MASK ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void __bth_set_qpn(void *arg, u32 qpn)
{
 struct rxe_bth *bth = arg;
 u32 resvqpn = be32_to_cpu(bth->qpn);

 bth->qpn = cpu_to_be32((BTH_QPN_MASK & qpn) |
          (~BTH_QPN_MASK & resvqpn));
}
