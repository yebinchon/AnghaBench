
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int IB_SPEED_EDR ;
 int IB_SPEED_FDR ;
 int OPA_LINK_SPEED_12_5G ;
 int OPA_LINK_SPEED_25G ;

__attribute__((used)) static inline u16 opa_speed_to_ib(u16 in)
{
 u16 out = 0;

 if (in & OPA_LINK_SPEED_25G)
  out |= IB_SPEED_EDR;
 if (in & OPA_LINK_SPEED_12_5G)
  out |= IB_SPEED_FDR;

 return out;
}
