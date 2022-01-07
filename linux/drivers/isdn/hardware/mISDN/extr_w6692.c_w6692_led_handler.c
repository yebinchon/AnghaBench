
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w6692_hw {int fmask; scalar_t__ subtype; int xdata; } ;


 scalar_t__ W6692_USR ;
 int W_XDATA ;
 int WriteW6692 (struct w6692_hw*,int ,int) ;
 int led ;

__attribute__((used)) static void
w6692_led_handler(struct w6692_hw *card, int on)
{
 if ((!(card->fmask & led)) || card->subtype == W6692_USR)
  return;
 if (on) {
  card->xdata &= 0xfb;
  WriteW6692(card, W_XDATA, card->xdata);
 } else {
  card->xdata |= 0x04;
  WriteW6692(card, W_XDATA, card->xdata);
 }
}
