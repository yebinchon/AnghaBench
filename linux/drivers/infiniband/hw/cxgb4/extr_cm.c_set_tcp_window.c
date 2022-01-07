
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int dummy; } ;
struct c4iw_ep {int rcv_win; int snd_win; } ;


 int pr_debug (char*,int ,int ) ;
 int rcv_win ;
 int snd_win ;

__attribute__((used)) static void set_tcp_window(struct c4iw_ep *ep, struct port_info *pi)
{
 ep->snd_win = snd_win;
 ep->rcv_win = rcv_win;
 pr_debug("snd_win %d rcv_win %d\n",
   ep->snd_win, ep->rcv_win);
}
