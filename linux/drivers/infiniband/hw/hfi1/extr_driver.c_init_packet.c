
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_packet {int rsize; int maxcnt; int etail; scalar_t__ numpkt; int rhqoff; int rhf_addr; int rhf; scalar_t__ updegr; struct hfi1_ctxtdata* rcd; } ;
struct hfi1_ctxtdata {int rcvhdrqentsize; int rcvhdrq_cnt; int head; } ;


 int get_rhf_addr (struct hfi1_ctxtdata*) ;
 int rhf_to_cpu (int ) ;

__attribute__((used)) static inline void init_packet(struct hfi1_ctxtdata *rcd,
          struct hfi1_packet *packet)
{
 packet->rsize = rcd->rcvhdrqentsize;
 packet->maxcnt = rcd->rcvhdrq_cnt * packet->rsize;
 packet->rcd = rcd;
 packet->updegr = 0;
 packet->etail = -1;
 packet->rhf_addr = get_rhf_addr(rcd);
 packet->rhf = rhf_to_cpu(packet->rhf_addr);
 packet->rhqoff = rcd->head;
 packet->numpkt = 0;
}
