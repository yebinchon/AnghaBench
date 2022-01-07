
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_bth {int qpn; } ;


 int BTH_RESV6A_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u8 __bth_resv6a(void *arg)
{
 struct rxe_bth *bth = arg;

 return (BTH_RESV6A_MASK & be32_to_cpu(bth->qpn)) >> 24;
}
