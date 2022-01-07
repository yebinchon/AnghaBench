
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int IBCStatus ;





 int IB_PORT_ACTIVE ;
 int IB_PORT_ARMED ;
 int IB_PORT_DOWN ;
 int IB_PORT_INIT ;
 int LinkState ;
 int SYM_FIELD (int ,int ,int ) ;

__attribute__((used)) static u32 qib_6120_iblink_state(u64 ibcs)
{
 u32 state = (u32)SYM_FIELD(ibcs, IBCStatus, LinkState);

 switch (state) {
 case 128:
  state = IB_PORT_INIT;
  break;
 case 130:
  state = IB_PORT_ARMED;
  break;
 case 132:

 case 131:
  state = IB_PORT_ACTIVE;
  break;
 default:
 case 129:
  state = IB_PORT_DOWN;
  break;
 }
 return state;
}
