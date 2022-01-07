
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_15__ {int dlid; int slid; } ;
struct TYPE_13__ {void* interface_id; } ;
struct TYPE_14__ {TYPE_4__ global; } ;
struct TYPE_11__ {void* interface_id; } ;
struct TYPE_12__ {TYPE_2__ global; } ;
struct sa_path_rec {scalar_t__ rec_type; int packet_life_time; int sl; int rate; int hop_limit; int traffic_class; int flow_label; TYPE_6__ opa; TYPE_5__ dgid; TYPE_3__ sgid; } ;
struct cm_lap_msg {int private_data; int alt_hop_limit; TYPE_5__ alt_remote_gid; TYPE_3__ alt_local_gid; void* alt_remote_lid; void* alt_local_lid; int remote_comm_id; int local_comm_id; int hdr; } ;
struct TYPE_18__ {TYPE_8__* port; } ;
struct TYPE_10__ {int remote_id; int local_id; } ;
struct cm_id_private {TYPE_9__ av; int remote_qpn; TYPE_1__ id; } ;
struct TYPE_17__ {TYPE_7__* cm_dev; } ;
struct TYPE_16__ {int ack_delay; } ;


 int CM_LAP_ATTR_ID ;
 void* OPA_MAKE_ID (int ) ;
 scalar_t__ SA_PATH_REC_TYPE_OPA ;
 int be32_to_cpu (int ) ;
 int cm_ack_timeout (int ,int ) ;
 int cm_form_tid (struct cm_id_private*) ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int cm_lap_set_flow_label (struct cm_lap_msg*,int ) ;
 int cm_lap_set_local_ack_timeout (struct cm_lap_msg*,int ) ;
 int cm_lap_set_packet_rate (struct cm_lap_msg*,int ) ;
 int cm_lap_set_remote_qpn (struct cm_lap_msg*,int ) ;
 int cm_lap_set_remote_resp_timeout (struct cm_lap_msg*,int) ;
 int cm_lap_set_sl (struct cm_lap_msg*,int ) ;
 int cm_lap_set_subnet_local (struct cm_lap_msg*,int) ;
 int cm_lap_set_traffic_class (struct cm_lap_msg*,int ) ;
 void* htons (int ) ;
 int memcpy (int ,void const*,scalar_t__) ;
 int ntohl (int ) ;
 int opa_is_extended_lid (int ,int ) ;
 int sa_path_get_dlid (struct sa_path_rec*) ;
 int sa_path_get_slid (struct sa_path_rec*) ;

__attribute__((used)) static void cm_format_lap(struct cm_lap_msg *lap_msg,
     struct cm_id_private *cm_id_priv,
     struct sa_path_rec *alternate_path,
     const void *private_data,
     u8 private_data_len)
{
 bool alt_ext = 0;

 if (alternate_path->rec_type == SA_PATH_REC_TYPE_OPA)
  alt_ext = opa_is_extended_lid(alternate_path->opa.dlid,
           alternate_path->opa.slid);
 cm_format_mad_hdr(&lap_msg->hdr, CM_LAP_ATTR_ID,
     cm_form_tid(cm_id_priv));
 lap_msg->local_comm_id = cm_id_priv->id.local_id;
 lap_msg->remote_comm_id = cm_id_priv->id.remote_id;
 cm_lap_set_remote_qpn(lap_msg, cm_id_priv->remote_qpn);

 cm_lap_set_remote_resp_timeout(lap_msg, 0x1F);
 lap_msg->alt_local_lid =
  htons(ntohl(sa_path_get_slid(alternate_path)));
 lap_msg->alt_remote_lid =
  htons(ntohl(sa_path_get_dlid(alternate_path)));
 lap_msg->alt_local_gid = alternate_path->sgid;
 lap_msg->alt_remote_gid = alternate_path->dgid;
 if (alt_ext) {
  lap_msg->alt_local_gid.global.interface_id
   = OPA_MAKE_ID(be32_to_cpu(alternate_path->opa.slid));
  lap_msg->alt_remote_gid.global.interface_id
   = OPA_MAKE_ID(be32_to_cpu(alternate_path->opa.dlid));
 }
 cm_lap_set_flow_label(lap_msg, alternate_path->flow_label);
 cm_lap_set_traffic_class(lap_msg, alternate_path->traffic_class);
 lap_msg->alt_hop_limit = alternate_path->hop_limit;
 cm_lap_set_packet_rate(lap_msg, alternate_path->rate);
 cm_lap_set_sl(lap_msg, alternate_path->sl);
 cm_lap_set_subnet_local(lap_msg, 1);
 cm_lap_set_local_ack_timeout(lap_msg,
  cm_ack_timeout(cm_id_priv->av.port->cm_dev->ack_delay,
          alternate_path->packet_life_time));

 if (private_data && private_data_len)
  memcpy(lap_msg->private_data, private_data, private_data_len);
}
