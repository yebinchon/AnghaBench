
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rdma_ah_attr {int dummy; } ;
struct TYPE_6__ {int grh_present; void* flow_label; int gid; int traffic_class; int hop_limit; int gid_index; int pkey_index; int path_bits; int sl; void* lid; void* qpn; scalar_t__ length; scalar_t__ status; } ;
struct TYPE_7__ {TYPE_2__ hdr; } ;
struct ib_umad_packet {TYPE_3__ mad; struct ib_mad_recv_wc* recv_wc; scalar_t__ length; } ;
struct ib_umad_file {int dummy; } ;
struct ib_mad_send_buf {int dummy; } ;
struct TYPE_5__ {int grh; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; TYPE_4__* wc; scalar_t__ mad_len; } ;
struct ib_mad_agent {int port_num; int device; struct ib_umad_file* context; } ;
struct ib_global_route {int flow_label; int dgid; int traffic_class; int hop_limit; int sgid_index; } ;
struct TYPE_8__ {scalar_t__ status; int slid; int wc_flags; int pkey_index; int dlid_path_bits; int sl; int src_qp; } ;


 int GFP_KERNEL ;
 int IB_WC_GRH ;
 scalar_t__ IB_WC_SUCCESS ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ hdr_size (struct ib_umad_file*) ;
 int ib_free_recv_mad (struct ib_mad_recv_wc*) ;
 int ib_init_ah_attr_from_wc (int ,int ,TYPE_4__*,int ,struct rdma_ah_attr*) ;
 void* ib_lid_be16 (int) ;
 int kfree (struct ib_umad_packet*) ;
 struct ib_umad_packet* kzalloc (int,int ) ;
 int memcpy (int ,int *,int) ;
 scalar_t__ queue_packet (struct ib_umad_file*,struct ib_mad_agent*,struct ib_umad_packet*) ;
 struct ib_global_route* rdma_ah_read_grh (struct rdma_ah_attr*) ;
 scalar_t__ rdma_cap_opa_mad (int ,int ) ;
 int rdma_destroy_ah_attr (struct rdma_ah_attr*) ;

__attribute__((used)) static void recv_handler(struct ib_mad_agent *agent,
    struct ib_mad_send_buf *send_buf,
    struct ib_mad_recv_wc *mad_recv_wc)
{
 struct ib_umad_file *file = agent->context;
 struct ib_umad_packet *packet;

 if (mad_recv_wc->wc->status != IB_WC_SUCCESS)
  goto err1;

 packet = kzalloc(sizeof *packet, GFP_KERNEL);
 if (!packet)
  goto err1;

 packet->length = mad_recv_wc->mad_len;
 packet->recv_wc = mad_recv_wc;

 packet->mad.hdr.status = 0;
 packet->mad.hdr.length = hdr_size(file) + mad_recv_wc->mad_len;
 packet->mad.hdr.qpn = cpu_to_be32(mad_recv_wc->wc->src_qp);




 if (rdma_cap_opa_mad(agent->device, agent->port_num))
  packet->mad.hdr.lid = ib_lid_be16(0xFFFF &
        mad_recv_wc->wc->slid);
 else
  packet->mad.hdr.lid = ib_lid_be16(mad_recv_wc->wc->slid);
 packet->mad.hdr.sl = mad_recv_wc->wc->sl;
 packet->mad.hdr.path_bits = mad_recv_wc->wc->dlid_path_bits;
 packet->mad.hdr.pkey_index = mad_recv_wc->wc->pkey_index;
 packet->mad.hdr.grh_present = !!(mad_recv_wc->wc->wc_flags & IB_WC_GRH);
 if (packet->mad.hdr.grh_present) {
  struct rdma_ah_attr ah_attr;
  const struct ib_global_route *grh;
  int ret;

  ret = ib_init_ah_attr_from_wc(agent->device, agent->port_num,
           mad_recv_wc->wc,
           mad_recv_wc->recv_buf.grh,
           &ah_attr);
  if (ret)
   goto err2;

  grh = rdma_ah_read_grh(&ah_attr);
  packet->mad.hdr.gid_index = grh->sgid_index;
  packet->mad.hdr.hop_limit = grh->hop_limit;
  packet->mad.hdr.traffic_class = grh->traffic_class;
  memcpy(packet->mad.hdr.gid, &grh->dgid, 16);
  packet->mad.hdr.flow_label = cpu_to_be32(grh->flow_label);
  rdma_destroy_ah_attr(&ah_attr);
 }

 if (queue_packet(file, agent, packet))
  goto err2;
 return;

err2:
 kfree(packet);
err1:
 ib_free_recv_mad(mad_recv_wc);
}
