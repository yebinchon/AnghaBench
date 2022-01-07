
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_12__ {int pad_count; scalar_t__ transport_header_version; int opcode; } ;
struct TYPE_11__ {void* length; } ;
struct TYPE_10__ {int ver; int hdr_len; int protocol; void* tot_len; } ;
struct TYPE_9__ {int ip_version; int next_header; void* payload_length; } ;
struct TYPE_8__ {void* type; } ;
struct TYPE_7__ {void* packet_length; int link_next_header; scalar_t__ link_version; } ;
struct ib_ud_header {int lrh_present; int eth_present; int vlan_present; int grh_present; int ipv4_present; int udp_present; int immediate_present; TYPE_6__ bth; TYPE_5__ udp; TYPE_4__ ip4; TYPE_3__ grh; TYPE_2__ eth; TYPE_1__ lrh; } ;


 int EINVAL ;
 int ETH_P_8021Q ;
 int IB_BTH_BYTES ;
 int IB_DETH_BYTES ;
 int IB_GRH_BYTES ;
 size_t IB_IP4_BYTES ;
 int IB_LNH_IBA_GLOBAL ;
 int IB_LNH_IBA_LOCAL ;
 int IB_LRH_BYTES ;
 int IB_OPCODE_UD_SEND_ONLY ;
 int IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE ;
 int IB_UDP_BYTES ;
 int IPPROTO_UDP ;
 void* cpu_to_be16 (int) ;
 int memset (struct ib_ud_header*,int ,int) ;

int ib_ud_header_init(int payload_bytes,
        int lrh_present,
        int eth_present,
        int vlan_present,
        int grh_present,
        int ip_version,
        int udp_present,
        int immediate_present,
        struct ib_ud_header *header)
{
 size_t udp_bytes = udp_present ? IB_UDP_BYTES : 0;

 grh_present = grh_present && !ip_version;
 memset(header, 0, sizeof *header);




 if (udp_present && ip_version != 4 && ip_version != 6)
  return -EINVAL;

 if (lrh_present) {
  u16 packet_length;

  header->lrh.link_version = 0;
  header->lrh.link_next_header =
   grh_present ? IB_LNH_IBA_GLOBAL : IB_LNH_IBA_LOCAL;
  packet_length = (IB_LRH_BYTES +
     IB_BTH_BYTES +
     IB_DETH_BYTES +
     (grh_present ? IB_GRH_BYTES : 0) +
     payload_bytes +
     4 +
     3) / 4;
  header->lrh.packet_length = cpu_to_be16(packet_length);
 }

 if (vlan_present)
  header->eth.type = cpu_to_be16(ETH_P_8021Q);

 if (ip_version == 6 || grh_present) {
  header->grh.ip_version = 6;
  header->grh.payload_length =
   cpu_to_be16((udp_bytes +
         IB_BTH_BYTES +
         IB_DETH_BYTES +
         payload_bytes +
         4 +
         3) & ~3);
  header->grh.next_header = udp_present ? IPPROTO_UDP : 0x1b;
 }

 if (ip_version == 4) {
  header->ip4.ver = 4;
  header->ip4.hdr_len = 5;
  header->ip4.tot_len =
   cpu_to_be16(IB_IP4_BYTES +
         udp_bytes +
         IB_BTH_BYTES +
         IB_DETH_BYTES +
         payload_bytes +
         4);
  header->ip4.protocol = IPPROTO_UDP;
 }
 if (udp_present && ip_version)
  header->udp.length =
   cpu_to_be16(IB_UDP_BYTES +
         IB_BTH_BYTES +
         IB_DETH_BYTES +
         payload_bytes +
         4);

 if (immediate_present)
  header->bth.opcode = IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE;
 else
  header->bth.opcode = IB_OPCODE_UD_SEND_ONLY;
 header->bth.pad_count = (4 - payload_bytes) & 3;
 header->bth.transport_header_version = 0;

 header->lrh_present = lrh_present;
 header->eth_present = eth_present;
 header->vlan_present = vlan_present;
 header->grh_present = grh_present || (ip_version == 6);
 header->ipv4_present = ip_version == 4;
 header->udp_present = udp_present;
 header->immediate_present = immediate_present;
 return 0;
}
