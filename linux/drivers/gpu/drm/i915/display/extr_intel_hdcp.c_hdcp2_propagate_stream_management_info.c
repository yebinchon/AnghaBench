
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_hdcp_shim {int (* write_2_2_msg ) (struct intel_digital_port*,struct hdcp2_rep_stream_manage*,int) ;int (* read_2_2_msg ) (struct intel_digital_port*,int ,struct hdcp2_rep_stream_ready*,int) ;} ;
struct TYPE_6__ {scalar_t__ seq_num_m; TYPE_2__* streams; } ;
struct intel_hdcp {scalar_t__ seq_num_m; int content_type; TYPE_3__ port_data; struct intel_hdcp_shim* shim; } ;
struct intel_digital_port {int dummy; } ;
struct intel_connector {struct intel_hdcp hdcp; } ;
struct hdcp2_rep_stream_ready {int dummy; } ;
struct hdcp2_rep_stream_manage {TYPE_1__* streams; int k; int seq_num_m; int msg_id; } ;
struct TYPE_5__ {int stream_type; } ;
struct TYPE_4__ {int stream_type; scalar_t__ stream_id; } ;


 int DRM_DEBUG_KMS (char*) ;
 int HDCP_2_2_REP_STREAM_MANAGE ;
 int HDCP_2_2_REP_STREAM_READY ;
 scalar_t__ HDCP_2_2_SEQ_NUM_MAX ;
 struct intel_digital_port* conn_to_dig_port (struct intel_connector*) ;
 int cpu_to_be16 (int) ;
 int drm_hdcp_cpu_to_be24 (int ,scalar_t__) ;
 int hdcp2_verify_mprime (struct intel_connector*,struct hdcp2_rep_stream_ready*) ;
 int stub1 (struct intel_digital_port*,struct hdcp2_rep_stream_manage*,int) ;
 int stub2 (struct intel_digital_port*,int ,struct hdcp2_rep_stream_ready*,int) ;

__attribute__((used)) static
int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
{
 struct intel_digital_port *intel_dig_port = conn_to_dig_port(connector);
 struct intel_hdcp *hdcp = &connector->hdcp;
 union {
  struct hdcp2_rep_stream_manage stream_manage;
  struct hdcp2_rep_stream_ready stream_ready;
 } msgs;
 const struct intel_hdcp_shim *shim = hdcp->shim;
 int ret;


 msgs.stream_manage.msg_id = HDCP_2_2_REP_STREAM_MANAGE;
 drm_hdcp_cpu_to_be24(msgs.stream_manage.seq_num_m, hdcp->seq_num_m);


 msgs.stream_manage.k = cpu_to_be16(1);


 msgs.stream_manage.streams[0].stream_id = 0;
 msgs.stream_manage.streams[0].stream_type = hdcp->content_type;


 ret = shim->write_2_2_msg(intel_dig_port, &msgs.stream_manage,
      sizeof(msgs.stream_manage));
 if (ret < 0)
  return ret;

 ret = shim->read_2_2_msg(intel_dig_port, HDCP_2_2_REP_STREAM_READY,
     &msgs.stream_ready, sizeof(msgs.stream_ready));
 if (ret < 0)
  return ret;

 hdcp->port_data.seq_num_m = hdcp->seq_num_m;
 hdcp->port_data.streams[0].stream_type = hdcp->content_type;

 ret = hdcp2_verify_mprime(connector, &msgs.stream_ready);
 if (ret < 0)
  return ret;

 hdcp->seq_num_m++;

 if (hdcp->seq_num_m > HDCP_2_2_SEQ_NUM_MAX) {
  DRM_DEBUG_KMS("seq_num_m roll over.\n");
  return -1;
 }

 return 0;
}
