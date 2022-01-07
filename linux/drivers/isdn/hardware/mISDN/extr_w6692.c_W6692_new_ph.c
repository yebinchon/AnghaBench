
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w6692_hw {scalar_t__ state; int dch; } ;


 int FLG_PHCHANGE ;
 int W_L1CMD_DRC ;
 scalar_t__ W_L1CMD_RST ;
 int ph_command (struct w6692_hw*,int ) ;
 int schedule_event (int *,int ) ;

__attribute__((used)) static void
W6692_new_ph(struct w6692_hw *card)
{
 if (card->state == W_L1CMD_RST)
  ph_command(card, W_L1CMD_DRC);
 schedule_event(&card->dch, FLG_PHCHANGE);
}
