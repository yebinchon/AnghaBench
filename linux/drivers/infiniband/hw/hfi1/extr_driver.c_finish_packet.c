
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_packet {int numpkt; int etail; int updegr; TYPE_1__* rcd; } ;
struct TYPE_2__ {int head; } ;


 int rcv_intr_dynamic ;
 int update_usrhead (TYPE_1__*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void finish_packet(struct hfi1_packet *packet)
{






 update_usrhead(packet->rcd, packet->rcd->head, packet->updegr,
         packet->etail, rcv_intr_dynamic, packet->numpkt);
}
