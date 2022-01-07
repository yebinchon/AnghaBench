
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int LINK_WIDTH_DEFAULT ;

u16 tx_link_width(u16 link_width)
{
 int n = LINK_WIDTH_DEFAULT;
 u16 tx_width = n;

 while (link_width && n) {
  if (link_width & (1 << (n - 1))) {
   tx_width = n;
   break;
  }
  n--;
 }

 return tx_width;
}
