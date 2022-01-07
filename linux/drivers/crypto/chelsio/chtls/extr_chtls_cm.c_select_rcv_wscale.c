
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_RCV_WND ;

__attribute__((used)) static unsigned int select_rcv_wscale(int space, int wscale_ok, int win_clamp)
{
 int wscale = 0;

 if (space > MAX_RCV_WND)
  space = MAX_RCV_WND;
 if (win_clamp && win_clamp < space)
  space = win_clamp;

 if (wscale_ok) {
  while (wscale < 14 && (65535 << wscale) < space)
   wscale++;
 }
 return wscale;
}
