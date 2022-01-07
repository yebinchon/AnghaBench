
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_packet {int numpkt; int * grh; scalar_t__ updegr; int etail; int rhqoff; int rcd; } ;


 int update_usrhead (int ,int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static inline void process_rcv_update(int last, struct hfi1_packet *packet)
{






 if (!last && !(packet->numpkt & 0xf)) {
  update_usrhead(packet->rcd, packet->rhqoff, packet->updegr,
          packet->etail, 0, 0);
  packet->updegr = 0;
 }
 packet->grh = ((void*)0);
}
