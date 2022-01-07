
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;


 int IBCStatusA_0 ;
 int LinkTrainingState ;
 int SYM_FIELD (int ,int ,int ) ;
 size_t* qib_7322_physportstate ;

__attribute__((used)) static u8 qib_7322_phys_portstate(u64 ibcs)
{
 u8 state = (u8)SYM_FIELD(ibcs, IBCStatusA_0, LinkTrainingState);
 return qib_7322_physportstate[state];
}
