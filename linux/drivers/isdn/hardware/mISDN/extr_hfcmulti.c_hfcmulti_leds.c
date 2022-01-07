
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hfc_multi {int leds; size_t* dnum; int e1_state; int* flash; int activity_tx; int activity_rx; int ledstate; int pci_iobase; TYPE_1__* chan; int chip; } ;
struct TYPE_5__ {int protocol; } ;
struct TYPE_6__ {TYPE_2__ D; } ;
struct dchannel {int state; TYPE_3__ dev; } ;
struct TYPE_4__ {struct dchannel* dch; int los; } ;


 int HFC_CHIP_B410P ;
 int HFC_outb_nodebug (struct hfc_multi*,int ,int) ;
 int ISDN_P_NT_S0 ;
 int R_BRG_PCM_CFG ;
 int R_GPIO_EN1 ;
 int R_GPIO_OUT1 ;
 int V_PCM_CLK ;
 int outl (unsigned long,int ) ;
 int outw (int,int ) ;
 void* poll ;
 int test_bit (int ,int *) ;
 int vpm_out (struct hfc_multi*,int ,int,int) ;

__attribute__((used)) static void
hfcmulti_leds(struct hfc_multi *hc)
{
 unsigned long lled;
 unsigned long leddw;
 int i, state, active, leds;
 struct dchannel *dch;
 int led[4];

 switch (hc->leds) {
 case 1:






  led[0] = 0;
  led[1] = 0;
  led[2] = 0;
  led[3] = 0;
  dch = hc->chan[hc->dnum[0]].dch;
  if (dch) {
   if (hc->chan[hc->dnum[0]].los)
    led[1] = 1;
   if (hc->e1_state != 1) {
    led[0] = 1;
    hc->flash[2] = 0;
    hc->flash[3] = 0;
   } else {
    led[2] = 1;
    led[3] = 1;
    if (!hc->flash[2] && hc->activity_tx)
     hc->flash[2] = poll;
    if (!hc->flash[3] && hc->activity_rx)
     hc->flash[3] = poll;
    if (hc->flash[2] && hc->flash[2] < 1024)
     led[2] = 0;
    if (hc->flash[3] && hc->flash[3] < 1024)
     led[3] = 0;
    if (hc->flash[2] >= 2048)
     hc->flash[2] = 0;
    if (hc->flash[3] >= 2048)
     hc->flash[3] = 0;
    if (hc->flash[2])
     hc->flash[2] += poll;
    if (hc->flash[3])
     hc->flash[3] += poll;
   }
  }
  leds = (led[0] | (led[1]<<2) | (led[2]<<1) | (led[3]<<3))^0xF;

  if (leds != (int)hc->ledstate) {
   HFC_outb_nodebug(hc, R_GPIO_OUT1, leds);
   hc->ledstate = leds;
  }
  break;

 case 2:




  for (i = 0; i < 4; i++) {
   state = 0;
   active = -1;
   dch = hc->chan[(i << 2) | 2].dch;
   if (dch) {
    state = dch->state;
    if (dch->dev.D.protocol == ISDN_P_NT_S0)
     active = 3;
    else
     active = 7;
   }
   if (state) {
    if (state == active) {
     led[i] = 1;
     hc->activity_tx |= hc->activity_rx;
     if (!hc->flash[i] &&
      (hc->activity_tx & (1 << i)))
       hc->flash[i] = poll;
     if (hc->flash[i] && hc->flash[i] < 1024)
      led[i] = 0;
     if (hc->flash[i] >= 2048)
      hc->flash[i] = 0;
     if (hc->flash[i])
      hc->flash[i] += poll;
    } else {
     led[i] = 2;
     hc->flash[i] = 0;
    }
   } else
    led[i] = 0;
  }
  if (test_bit(HFC_CHIP_B410P, &hc->chip)) {
   leds = 0;
   for (i = 0; i < 4; i++) {
    if (led[i] == 1) {

     leds |= (0x2 << (i * 2));
    } else if (led[i] == 2) {

     leds |= (0x1 << (i * 2));
    }
   }
   if (leds != (int)hc->ledstate) {
    vpm_out(hc, 0, 0x1a8 + 3, leds);
    hc->ledstate = leds;
   }
  } else {
   leds = ((led[3] > 0) << 0) | ((led[1] > 0) << 1) |
    ((led[0] > 0) << 2) | ((led[2] > 0) << 3) |
    ((led[3] & 1) << 4) | ((led[1] & 1) << 5) |
    ((led[0] & 1) << 6) | ((led[2] & 1) << 7);
   if (leds != (int)hc->ledstate) {
    HFC_outb_nodebug(hc, R_GPIO_EN1, leds & 0x0F);
    HFC_outb_nodebug(hc, R_GPIO_OUT1, leds >> 4);
    hc->ledstate = leds;
   }
  }
  break;

 case 3:




  for (i = 0; i < 2; i++) {
   state = 0;
   active = -1;
   dch = hc->chan[(i << 2) | 2].dch;
   if (dch) {
    state = dch->state;
    if (dch->dev.D.protocol == ISDN_P_NT_S0)
     active = 3;
    else
     active = 7;
   }
   if (state) {
    if (state == active) {
     led[i] = 1;
     hc->activity_tx |= hc->activity_rx;
     if (!hc->flash[i] &&
      (hc->activity_tx & (1 << i)))
       hc->flash[i] = poll;
     if (hc->flash[i] < 1024)
      led[i] = 0;
     if (hc->flash[i] >= 2048)
      hc->flash[i] = 0;
     if (hc->flash[i])
      hc->flash[i] += poll;
    } else {
     led[i] = 2;
     hc->flash[i] = 0;
    }
   } else
    led[i] = 0;
  }
  leds = (led[0] > 0) | ((led[1] > 0) << 1) | ((led[0]&1) << 2)
   | ((led[1]&1) << 3);
  if (leds != (int)hc->ledstate) {
   HFC_outb_nodebug(hc, R_GPIO_EN1,
      ((led[0] > 0) << 2) | ((led[1] > 0) << 3));
   HFC_outb_nodebug(hc, R_GPIO_OUT1,
      ((led[0] & 1) << 2) | ((led[1] & 1) << 3));
   hc->ledstate = leds;
  }
  break;
 case 8:




  lled = 0xff;
  for (i = 0; i < 8; i++) {
   state = 0;
   active = -1;
   dch = hc->chan[(i << 2) | 2].dch;
   if (dch) {
    state = dch->state;
    if (dch->dev.D.protocol == ISDN_P_NT_S0)
     active = 3;
    else
     active = 7;
   }
   if (state) {
    if (state == active) {
     lled &= ~(1 << i);
     hc->activity_tx |= hc->activity_rx;
     if (!hc->flash[i] &&
      (hc->activity_tx & (1 << i)))
       hc->flash[i] = poll;
     if (hc->flash[i] < 1024)
      lled |= 1 << i;
     if (hc->flash[i] >= 2048)
      hc->flash[i] = 0;
     if (hc->flash[i])
      hc->flash[i] += poll;
    } else
     hc->flash[i] = 0;
   }
  }
  leddw = lled << 24 | lled << 16 | lled << 8 | lled;
  if (leddw != hc->ledstate) {



   HFC_outb_nodebug(hc, R_BRG_PCM_CFG, 1 | V_PCM_CLK);
   outw(0x4000, hc->pci_iobase + 4);
   outl(leddw, hc->pci_iobase);
   HFC_outb_nodebug(hc, R_BRG_PCM_CFG, V_PCM_CLK);
   hc->ledstate = leddw;
  }
  break;
 }
 hc->activity_tx = 0;
 hc->activity_rx = 0;
}
