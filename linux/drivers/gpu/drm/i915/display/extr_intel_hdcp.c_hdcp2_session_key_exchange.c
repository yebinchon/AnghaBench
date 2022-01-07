
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_hdcp {TYPE_1__* shim; } ;
struct intel_digital_port {int dummy; } ;
struct intel_connector {struct intel_hdcp hdcp; } ;
struct hdcp2_ske_send_eks {int dummy; } ;
typedef int send_eks ;
struct TYPE_2__ {int (* write_2_2_msg ) (struct intel_digital_port*,struct hdcp2_ske_send_eks*,int) ;} ;


 struct intel_digital_port* conn_to_dig_port (struct intel_connector*) ;
 int hdcp2_prepare_skey (struct intel_connector*,struct hdcp2_ske_send_eks*) ;
 int stub1 (struct intel_digital_port*,struct hdcp2_ske_send_eks*,int) ;

__attribute__((used)) static int hdcp2_session_key_exchange(struct intel_connector *connector)
{
 struct intel_digital_port *intel_dig_port = conn_to_dig_port(connector);
 struct intel_hdcp *hdcp = &connector->hdcp;
 struct hdcp2_ske_send_eks send_eks;
 int ret;

 ret = hdcp2_prepare_skey(connector, &send_eks);
 if (ret < 0)
  return ret;

 ret = hdcp->shim->write_2_2_msg(intel_dig_port, &send_eks,
     sizeof(send_eks));
 if (ret < 0)
  return ret;

 return 0;
}
