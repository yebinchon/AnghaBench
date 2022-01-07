
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef void* u32 ;
typedef scalar_t__ u16 ;
struct TYPE_23__ {int dmac; } ;
struct rdma_ah_attr {TYPE_2__ roce; } ;
struct qedr_qp {int sq_psn; } ;
struct qedr_dev {TYPE_3__* ndev; } ;
struct in6_addr {int dummy; } ;
struct TYPE_19__ {scalar_t__ csum; void* dport; void* sport; } ;
struct TYPE_18__ {void* daddr; void* saddr; int ttl; void* frag_off; void* tos; int protocol; } ;
struct TYPE_29__ {int raw; } ;
struct TYPE_17__ {int raw; } ;
struct TYPE_30__ {int flow_label; TYPE_8__ source_gid; TYPE_11__ destination_gid; int hop_limit; int traffic_class; } ;
struct TYPE_28__ {void* source_qpn; void* qkey; } ;
struct TYPE_27__ {int solicited_event; int opcode; void* psn; void* destination_qpn; int pkey; } ;
struct TYPE_26__ {void* type; int smac_h; int dmac_h; } ;
struct TYPE_25__ {void* type; void* tag; } ;
struct ib_ud_header {TYPE_13__ udp; TYPE_12__ ip4; TYPE_9__ grh; TYPE_7__ deth; TYPE_6__ bth; TYPE_5__ eth; TYPE_4__ vlan; } ;
struct ib_send_wr {int num_sge; int send_flags; TYPE_1__* sg_list; } ;
struct ib_global_route {int flow_label; TYPE_11__ dgid; int hop_limit; int traffic_class; struct ib_gid_attr* sgid_attr; } ;
struct TYPE_16__ {int raw; } ;
struct ib_gid_attr {scalar_t__ gid_type; TYPE_10__ gid; } ;
struct TYPE_24__ {int dev_addr; } ;
struct TYPE_22__ {scalar_t__ length; } ;
struct TYPE_21__ {struct rdma_ah_attr attr; } ;
struct TYPE_20__ {int remote_qpn; int ah; } ;


 int DP_ERR (struct qedr_dev*,char*) ;
 scalar_t__ ETH_P_8021Q ;
 scalar_t__ ETH_P_IBOE ;
 scalar_t__ ETH_P_IP ;
 scalar_t__ ETH_P_IPV6 ;
 scalar_t__ IB_GID_TYPE_ROCE_UDP_ENCAP ;
 int IB_OPCODE_UD_SEND_ONLY ;
 int IB_SEND_SOLICITED ;
 int IPPROTO_UDP ;
 scalar_t__ IP_DF ;
 int QEDR_GSI_QPN ;
 int QEDR_ROCE_PKEY_DEFAULT ;
 scalar_t__ QEDR_ROCE_V2_UDP_SPORT ;
 int ROCE_V1 ;
 int ROCE_V2_IPV4 ;
 int ROCE_V2_IPV6 ;
 scalar_t__ ROCE_V2_UDP_DPORT ;
 scalar_t__ VLAN_CFI_MASK ;
 int ether_addr_copy (int ,int ) ;
 TYPE_15__* get_qedr_ah (int ) ;
 void* htonl (int) ;
 void* htons (scalar_t__) ;
 int ib_ud_header_init (int,int,int,int,int,int,int,int ,struct ib_ud_header*) ;
 scalar_t__ ipv6_addr_v4mapped (struct in6_addr*) ;
 int memcpy (int *,int ,int) ;
 void* qedr_get_ipv4_from_gid (int ) ;
 struct ib_global_route* rdma_ah_read_grh (struct rdma_ah_attr*) ;
 int rdma_read_gid_l2_fields (struct ib_gid_attr const*,scalar_t__*,int *) ;
 TYPE_14__* ud_wr (struct ib_send_wr const*) ;

__attribute__((used)) static inline int qedr_gsi_build_header(struct qedr_dev *dev,
     struct qedr_qp *qp,
     const struct ib_send_wr *swr,
     struct ib_ud_header *udh,
     int *roce_mode)
{
 bool has_vlan = 0, has_grh_ipv6 = 1;
 struct rdma_ah_attr *ah_attr = &get_qedr_ah(ud_wr(swr)->ah)->attr;
 const struct ib_global_route *grh = rdma_ah_read_grh(ah_attr);
 const struct ib_gid_attr *sgid_attr = grh->sgid_attr;
 int send_size = 0;
 u16 vlan_id = 0;
 u16 ether_type;
 int rc;
 int ip_ver = 0;

 bool has_udp = 0;
 int i;

 rc = rdma_read_gid_l2_fields(sgid_attr, &vlan_id, ((void*)0));
 if (rc)
  return rc;

 if (vlan_id < VLAN_CFI_MASK)
  has_vlan = 1;

 send_size = 0;
 for (i = 0; i < swr->num_sge; ++i)
  send_size += swr->sg_list[i].length;

 has_udp = (sgid_attr->gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP);
 if (!has_udp) {

  ether_type = ETH_P_IBOE;
  *roce_mode = ROCE_V1;
 } else if (ipv6_addr_v4mapped((struct in6_addr *)&sgid_attr->gid)) {

  ip_ver = 4;
  ether_type = ETH_P_IP;
  has_grh_ipv6 = 0;
  *roce_mode = ROCE_V2_IPV4;
 } else {

  ip_ver = 6;
  ether_type = ETH_P_IPV6;
  *roce_mode = ROCE_V2_IPV6;
 }

 rc = ib_ud_header_init(send_size, 0, 1, has_vlan,
          has_grh_ipv6, ip_ver, has_udp, 0, udh);
 if (rc) {
  DP_ERR(dev, "gsi post send: failed to init header\n");
  return rc;
 }


 ether_addr_copy(udh->eth.dmac_h, ah_attr->roce.dmac);
 ether_addr_copy(udh->eth.smac_h, dev->ndev->dev_addr);
 if (has_vlan) {
  udh->eth.type = htons(ETH_P_8021Q);
  udh->vlan.tag = htons(vlan_id);
  udh->vlan.type = htons(ether_type);
 } else {
  udh->eth.type = htons(ether_type);
 }


 udh->bth.solicited_event = !!(swr->send_flags & IB_SEND_SOLICITED);
 udh->bth.pkey = QEDR_ROCE_PKEY_DEFAULT;
 udh->bth.destination_qpn = htonl(ud_wr(swr)->remote_qpn);
 udh->bth.psn = htonl((qp->sq_psn++) & ((1 << 24) - 1));
 udh->bth.opcode = IB_OPCODE_UD_SEND_ONLY;


 udh->deth.qkey = htonl(0x80010000);
 udh->deth.source_qpn = htonl(QEDR_GSI_QPN);

 if (has_grh_ipv6) {

  udh->grh.traffic_class = grh->traffic_class;
  udh->grh.flow_label = grh->flow_label;
  udh->grh.hop_limit = grh->hop_limit;
  udh->grh.destination_gid = grh->dgid;
  memcpy(&udh->grh.source_gid.raw, sgid_attr->gid.raw,
         sizeof(udh->grh.source_gid.raw));
 } else {

  u32 ipv4_addr;

  udh->ip4.protocol = IPPROTO_UDP;
  udh->ip4.tos = htonl(grh->flow_label);
  udh->ip4.frag_off = htons(IP_DF);
  udh->ip4.ttl = grh->hop_limit;

  ipv4_addr = qedr_get_ipv4_from_gid(sgid_attr->gid.raw);
  udh->ip4.saddr = ipv4_addr;
  ipv4_addr = qedr_get_ipv4_from_gid(grh->dgid.raw);
  udh->ip4.daddr = ipv4_addr;

 }


 if (has_udp) {
  udh->udp.sport = htons(QEDR_ROCE_V2_UDP_SPORT);
  udh->udp.dport = htons(ROCE_V2_UDP_DPORT);
  udh->udp.csum = 0;

 }
 return 0;
}
