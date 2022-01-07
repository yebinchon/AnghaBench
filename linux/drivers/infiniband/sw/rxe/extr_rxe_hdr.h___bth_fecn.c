
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_bth {int qpn; } ;


 int BTH_FECN_MASK ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline int __bth_fecn(void *arg)
{
 struct rxe_bth *bth = arg;

 return 0 != (cpu_to_be32(BTH_FECN_MASK) & bth->qpn);
}
