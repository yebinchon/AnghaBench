
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_bth {int qpn; } ;


 int BTH_RESV6A_MASK ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void __bth_set_resv6a(void *arg)
{
 struct rxe_bth *bth = arg;

 bth->qpn = cpu_to_be32(~BTH_RESV6A_MASK);
}
