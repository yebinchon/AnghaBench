
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int route_resolved; } ;
struct sa_path_rec {int reversible; scalar_t__ packet_life_time; TYPE_1__ roce; int service_id; void* packet_life_time_selector; int rate; void* rate_selector; void* mtu; void* mtu_selector; int sl; int pkey; int traffic_class; int hop_limit; int flow_label; int sgid; int dgid; } ;
struct cm_req_msg {int service_id; int pkey; int alt_traffic_class; int alt_hop_limit; int alt_remote_gid; int alt_local_gid; int primary_traffic_class; int primary_hop_limit; int primary_remote_gid; int primary_local_gid; } ;


 void* IB_SA_EQ ;
 int cm_format_path_lid_from_req (struct cm_req_msg*,struct sa_path_rec*,struct sa_path_rec*) ;
 int cm_req_get_alt_flow_label (struct cm_req_msg*) ;
 scalar_t__ cm_req_get_alt_local_ack_timeout (struct cm_req_msg*) ;
 int cm_req_get_alt_packet_rate (struct cm_req_msg*) ;
 int cm_req_get_alt_sl (struct cm_req_msg*) ;
 void* cm_req_get_path_mtu (struct cm_req_msg*) ;
 int cm_req_get_primary_flow_label (struct cm_req_msg*) ;
 scalar_t__ cm_req_get_primary_local_ack_timeout (struct cm_req_msg*) ;
 int cm_req_get_primary_packet_rate (struct cm_req_msg*) ;
 int cm_req_get_primary_sl (struct cm_req_msg*) ;
 scalar_t__ cm_req_has_alt_path (struct cm_req_msg*) ;
 scalar_t__ sa_path_is_roce (struct sa_path_rec*) ;

__attribute__((used)) static void cm_format_paths_from_req(struct cm_req_msg *req_msg,
         struct sa_path_rec *primary_path,
         struct sa_path_rec *alt_path)
{
 primary_path->dgid = req_msg->primary_local_gid;
 primary_path->sgid = req_msg->primary_remote_gid;
 primary_path->flow_label = cm_req_get_primary_flow_label(req_msg);
 primary_path->hop_limit = req_msg->primary_hop_limit;
 primary_path->traffic_class = req_msg->primary_traffic_class;
 primary_path->reversible = 1;
 primary_path->pkey = req_msg->pkey;
 primary_path->sl = cm_req_get_primary_sl(req_msg);
 primary_path->mtu_selector = IB_SA_EQ;
 primary_path->mtu = cm_req_get_path_mtu(req_msg);
 primary_path->rate_selector = IB_SA_EQ;
 primary_path->rate = cm_req_get_primary_packet_rate(req_msg);
 primary_path->packet_life_time_selector = IB_SA_EQ;
 primary_path->packet_life_time =
  cm_req_get_primary_local_ack_timeout(req_msg);
 primary_path->packet_life_time -= (primary_path->packet_life_time > 0);
 primary_path->service_id = req_msg->service_id;
 if (sa_path_is_roce(primary_path))
  primary_path->roce.route_resolved = 0;

 if (cm_req_has_alt_path(req_msg)) {
  alt_path->dgid = req_msg->alt_local_gid;
  alt_path->sgid = req_msg->alt_remote_gid;
  alt_path->flow_label = cm_req_get_alt_flow_label(req_msg);
  alt_path->hop_limit = req_msg->alt_hop_limit;
  alt_path->traffic_class = req_msg->alt_traffic_class;
  alt_path->reversible = 1;
  alt_path->pkey = req_msg->pkey;
  alt_path->sl = cm_req_get_alt_sl(req_msg);
  alt_path->mtu_selector = IB_SA_EQ;
  alt_path->mtu = cm_req_get_path_mtu(req_msg);
  alt_path->rate_selector = IB_SA_EQ;
  alt_path->rate = cm_req_get_alt_packet_rate(req_msg);
  alt_path->packet_life_time_selector = IB_SA_EQ;
  alt_path->packet_life_time =
   cm_req_get_alt_local_ack_timeout(req_msg);
  alt_path->packet_life_time -= (alt_path->packet_life_time > 0);
  alt_path->service_id = req_msg->service_id;

  if (sa_path_is_roce(alt_path))
   alt_path->roce.route_resolved = 0;
 }
 cm_format_path_lid_from_req(req_msg, primary_path, alt_path);
}
