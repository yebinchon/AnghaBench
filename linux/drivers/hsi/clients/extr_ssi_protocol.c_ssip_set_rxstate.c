
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {unsigned int recv_state; int rx_wd; int keep_alive; int tx_usecnt; int send_state; } ;





 int SEND_IDLE ;
 int SSIP_KATOUT ;
 int SSIP_WDTOUT ;
 int atomic_read (int *) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void ssip_set_rxstate(struct ssi_protocol *ssi, unsigned int state)
{
 ssi->recv_state = state;
 switch (state) {
 case 129:
  del_timer(&ssi->rx_wd);
  if (ssi->send_state == SEND_IDLE)
   del_timer(&ssi->keep_alive);
  break;
 case 128:

  if (atomic_read(&ssi->tx_usecnt))
   break;

 case 130:
  mod_timer(&ssi->keep_alive, jiffies +
      msecs_to_jiffies(SSIP_KATOUT));
  mod_timer(&ssi->rx_wd, jiffies + msecs_to_jiffies(SSIP_WDTOUT));
  break;
 default:
  break;
 }
}
