
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rxe_aeth {int smsn; } ;


 int AETH_SYN_MASK ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void __aeth_set_syn(void *arg, u8 syn)
{
 struct rxe_aeth *aeth = arg;
 u32 smsn = be32_to_cpu(aeth->smsn);

 aeth->smsn = cpu_to_be32((AETH_SYN_MASK & (syn << 24)) |
    (~AETH_SYN_MASK & smsn));
}
