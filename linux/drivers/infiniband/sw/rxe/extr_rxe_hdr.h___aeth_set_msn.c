
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_aeth {int smsn; } ;


 int AETH_MSN_MASK ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void __aeth_set_msn(void *arg, u32 msn)
{
 struct rxe_aeth *aeth = arg;
 u32 smsn = be32_to_cpu(aeth->smsn);

 aeth->smsn = cpu_to_be32((AETH_MSN_MASK & msn) |
    (~AETH_MSN_MASK & smsn));
}
