
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct flow_state {int generation; } ;


 int HFI1_KDETH_BTH_SEQ_MASK ;
 int HFI1_KDETH_BTH_SEQ_SHIFT ;
 int mask_psn (int) ;

__attribute__((used)) static inline u32 __full_flow_psn(struct flow_state *state, u32 psn)
{
 return mask_psn((state->generation << HFI1_KDETH_BTH_SEQ_SHIFT) |
   (psn & HFI1_KDETH_BTH_SEQ_MASK));
}
