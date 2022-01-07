
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {unsigned int send_state; int tx_wd; int keep_alive; int recv_state; } ;


 int RECV_IDLE ;




 int SSIP_KATOUT ;
 int SSIP_WDTOUT ;

 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void ssip_set_txstate(struct ssi_protocol *ssi, unsigned int state)
{
 ssi->send_state = state;
 switch (state) {
 case 130:
 case 129:
  del_timer(&ssi->tx_wd);
  if (ssi->recv_state == RECV_IDLE)
   del_timer(&ssi->keep_alive);
  break;
 case 128:
 case 132:
 case 131:
  mod_timer(&ssi->keep_alive,
    jiffies + msecs_to_jiffies(SSIP_KATOUT));
  mod_timer(&ssi->tx_wd, jiffies + msecs_to_jiffies(SSIP_WDTOUT));
  break;
 default:
  break;
 }
}
