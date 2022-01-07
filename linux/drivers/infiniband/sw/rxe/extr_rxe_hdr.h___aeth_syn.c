
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_aeth {int smsn; } ;


 int AETH_SYN_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u8 __aeth_syn(void *arg)
{
 struct rxe_aeth *aeth = arg;

 return (AETH_SYN_MASK & be32_to_cpu(aeth->smsn)) >> 24;
}
