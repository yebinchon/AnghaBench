
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {int wdcount; int wdbyte; } ;


 int HFC_outb (struct hfc_multi*,int ,int) ;
 int R_GPIO_EN0 ;
 int R_GPIO_OUT0 ;
 int V_GPIO_EN2 ;
 int V_GPIO_EN3 ;
 int V_GPIO_OUT2 ;
 int V_GPIO_OUT3 ;

__attribute__((used)) static void
hfcmulti_watchdog(struct hfc_multi *hc)
{
 hc->wdcount++;

 if (hc->wdcount > 10) {
  hc->wdcount = 0;
  hc->wdbyte = hc->wdbyte == V_GPIO_OUT2 ?
   V_GPIO_OUT3 : V_GPIO_OUT2;


  HFC_outb(hc, R_GPIO_EN0, V_GPIO_EN2 | V_GPIO_EN3);
  HFC_outb(hc, R_GPIO_OUT0, hc->wdbyte);
 }
}
