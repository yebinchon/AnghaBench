
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned int speed; } ;
struct port_info {TYPE_1__ link_cfg; } ;
struct net_device {int dummy; } ;
struct chtls_sock {int rcv_win; int snd_win; struct net_device* egress_dev; } ;


 int CHTLS_10G_RCVWIN ;
 int CHTLS_10G_SNDWIN ;
 unsigned int SPEED_10000 ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void chtls_set_tcp_window(struct chtls_sock *csk)
{
 struct net_device *ndev = csk->egress_dev;
 struct port_info *pi = netdev_priv(ndev);
 unsigned int linkspeed;
 u8 scale;

 linkspeed = pi->link_cfg.speed;
 scale = linkspeed / SPEED_10000;

 csk->rcv_win = (256 * 1024);
 if (scale)
  csk->rcv_win *= scale;

 csk->snd_win = (256 * 1024);
 if (scale)
  csk->snd_win *= scale;
}
