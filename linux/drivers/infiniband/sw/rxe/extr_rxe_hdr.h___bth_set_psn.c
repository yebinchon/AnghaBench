
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_bth {int apsn; } ;


 int BTH_PSN_MASK ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void __bth_set_psn(void *arg, u32 psn)
{
 struct rxe_bth *bth = arg;
 u32 apsn = be32_to_cpu(bth->apsn);

 bth->apsn = cpu_to_be32((BTH_PSN_MASK & psn) |
   (~BTH_PSN_MASK & apsn));
}
