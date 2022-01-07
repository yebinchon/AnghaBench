
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_wqe_datagram_seg {int mac; int vlan; void* qkey; void* dqpn; int av; } ;
struct mlx4_av {int dummy; } ;
struct ib_ud_wr {int ah; int remote_qkey; int remote_qpn; } ;
struct TYPE_4__ {TYPE_3__* mac; int vlan; } ;
struct TYPE_6__ {TYPE_1__ eth; } ;
struct TYPE_5__ {TYPE_3__ av; } ;


 void* cpu_to_be32 (int ) ;
 int memcpy (int ,TYPE_3__*,int) ;
 TYPE_2__* to_mah (int ) ;

__attribute__((used)) static void set_datagram_seg(struct mlx4_wqe_datagram_seg *dseg,
        const struct ib_ud_wr *wr)
{
 memcpy(dseg->av, &to_mah(wr->ah)->av, sizeof (struct mlx4_av));
 dseg->dqpn = cpu_to_be32(wr->remote_qpn);
 dseg->qkey = cpu_to_be32(wr->remote_qkey);
 dseg->vlan = to_mah(wr->ah)->av.eth.vlan;
 memcpy(dseg->mac, to_mah(wr->ah)->av.eth.mac, 6);
}
