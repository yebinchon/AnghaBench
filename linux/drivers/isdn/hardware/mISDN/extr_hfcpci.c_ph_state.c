
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ protocol; scalar_t__ nt_timer; } ;
struct hfc_pci {TYPE_1__ hw; } ;
struct dchannel {int Flags; struct hfc_pci* hw; } ;


 int FLG_HFC_TIMER_T3 ;
 scalar_t__ ISDN_P_NT_S0 ;
 int handle_nt_timer3 (struct dchannel*) ;
 int ph_state_nt (struct dchannel*) ;
 int ph_state_te (struct dchannel*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
ph_state(struct dchannel *dch)
{
 struct hfc_pci *hc = dch->hw;

 if (hc->hw.protocol == ISDN_P_NT_S0) {
  if (test_bit(FLG_HFC_TIMER_T3, &dch->Flags) &&
      hc->hw.nt_timer < 0)
   handle_nt_timer3(dch);
  else
   ph_state_nt(dch);
 } else
  ph_state_te(dch);
}
