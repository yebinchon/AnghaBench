
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sk4; } ;


 scalar_t__ IS_ERR (int *) ;
 int ROCE_V2_UDP_DPORT ;
 int htons (int ) ;
 int init_net ;
 int pr_err (char*) ;
 TYPE_1__ recv_sockets ;
 int * rxe_setup_udp_tunnel (int *,int ,int) ;

__attribute__((used)) static int rxe_net_ipv4_init(void)
{
 recv_sockets.sk4 = rxe_setup_udp_tunnel(&init_net,
    htons(ROCE_V2_UDP_DPORT), 0);
 if (IS_ERR(recv_sockets.sk4)) {
  recv_sockets.sk4 = ((void*)0);
  pr_err("Failed to create IPv4 UDP tunnel\n");
  return -1;
 }

 return 0;
}
