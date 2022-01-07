
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_bth {int apsn; } ;


 int BTH_PSN_MASK ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 __bth_psn(void *arg)
{
 struct rxe_bth *bth = arg;

 return BTH_PSN_MASK & be32_to_cpu(bth->apsn);
}
