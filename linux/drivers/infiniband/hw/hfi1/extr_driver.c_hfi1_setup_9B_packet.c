
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_7__ {scalar_t__ next_hdr; int version_tclass_flow; } ;
struct TYPE_5__ {TYPE_3__ grh; int oth; } ;
struct TYPE_6__ {TYPE_1__ l; int oth; } ;
struct ib_header {TYPE_2__ u; } ;
struct hfi1_packet {scalar_t__ dlid; int * ohdr; int migrated; int pkey; scalar_t__ extra_byte; int pad; int rhf; int sc; int sl; int slid; int opcode; int ebuf; int payload; TYPE_3__* grh; struct ib_header* hdr; int rcd; } ;
struct TYPE_8__ {int n_pkt_drops; } ;
struct hfi1_ibport {TYPE_4__ rvp; } ;


 int EINVAL ;
 scalar_t__ HFI1_LRH_BTH ;
 scalar_t__ HFI1_LRH_GRH ;
 scalar_t__ IB_GRH_NEXT_HDR ;
 int IB_GRH_VERSION ;
 int IB_GRH_VERSION_SHIFT ;
 int IB_LID_PERMISSIVE ;
 int IB_MULTICAST_LID_BASE ;
 int OPA_MCAST_NR ;
 scalar_t__ be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int hfi1_9B_get_sc5 (struct ib_header*,int ) ;
 int hfi1_setup_ib_header (struct hfi1_packet*) ;
 int ib_bth_get_opcode (int *) ;
 int ib_bth_get_pad (int *) ;
 int ib_bth_get_pkey (int *) ;
 int ib_bth_is_migration (int *) ;
 scalar_t__ ib_get_dlid (struct ib_header*) ;
 scalar_t__ ib_get_lnh (struct ib_header*) ;
 int ib_get_sl (struct ib_header*) ;
 int ib_get_slid (struct ib_header*) ;
 scalar_t__ opa_get_mcast_base (int ) ;
 struct hfi1_ibport* rcd_to_iport (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hfi1_setup_9B_packet(struct hfi1_packet *packet)
{
 struct hfi1_ibport *ibp = rcd_to_iport(packet->rcd);
 struct ib_header *hdr;
 u8 lnh;

 hfi1_setup_ib_header(packet);
 hdr = packet->hdr;

 lnh = ib_get_lnh(hdr);
 if (lnh == HFI1_LRH_BTH) {
  packet->ohdr = &hdr->u.oth;
  packet->grh = ((void*)0);
 } else if (lnh == HFI1_LRH_GRH) {
  u32 vtf;

  packet->ohdr = &hdr->u.l.oth;
  packet->grh = &hdr->u.l.grh;
  if (packet->grh->next_hdr != IB_GRH_NEXT_HDR)
   goto drop;
  vtf = be32_to_cpu(packet->grh->version_tclass_flow);
  if ((vtf >> IB_GRH_VERSION_SHIFT) != IB_GRH_VERSION)
   goto drop;
 } else {
  goto drop;
 }


 packet->payload = packet->ebuf;
 packet->opcode = ib_bth_get_opcode(packet->ohdr);
 packet->slid = ib_get_slid(hdr);
 packet->dlid = ib_get_dlid(hdr);
 if (unlikely((packet->dlid >= be16_to_cpu(IB_MULTICAST_LID_BASE)) &&
       (packet->dlid != be16_to_cpu(IB_LID_PERMISSIVE))))
  packet->dlid += opa_get_mcast_base(OPA_MCAST_NR) -
    be16_to_cpu(IB_MULTICAST_LID_BASE);
 packet->sl = ib_get_sl(hdr);
 packet->sc = hfi1_9B_get_sc5(hdr, packet->rhf);
 packet->pad = ib_bth_get_pad(packet->ohdr);
 packet->extra_byte = 0;
 packet->pkey = ib_bth_get_pkey(packet->ohdr);
 packet->migrated = ib_bth_is_migration(packet->ohdr);

 return 0;
drop:
 ibp->rvp.n_pkt_drops++;
 return -EINVAL;
}
