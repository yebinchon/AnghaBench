
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct intel_hdcp_shim {scalar_t__ protocol; } ;
struct hdcp_port_data {int k; TYPE_2__* streams; void* protocol; void* port_type; int port; } ;
struct intel_hdcp {int content_type; struct hdcp_port_data port_data; } ;
struct intel_connector {TYPE_1__* encoder; struct intel_hdcp hdcp; } ;
struct hdcp2_streamid_type {int dummy; } ;
struct TYPE_4__ {int stream_type; scalar_t__ stream_id; } ;
struct TYPE_3__ {int port; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HDCP_PORT_TYPE_INTEGRATED ;
 TYPE_2__* kcalloc (int,int,int ) ;

__attribute__((used)) static inline int initialize_hdcp_port_data(struct intel_connector *connector,
         const struct intel_hdcp_shim *shim)
{
 struct intel_hdcp *hdcp = &connector->hdcp;
 struct hdcp_port_data *data = &hdcp->port_data;

 data->port = connector->encoder->port;
 data->port_type = (u8)HDCP_PORT_TYPE_INTEGRATED;
 data->protocol = (u8)shim->protocol;

 data->k = 1;
 if (!data->streams)
  data->streams = kcalloc(data->k,
     sizeof(struct hdcp2_streamid_type),
     GFP_KERNEL);
 if (!data->streams) {
  DRM_ERROR("Out of Memory\n");
  return -ENOMEM;
 }

 data->streams[0].stream_id = 0;
 data->streams[0].stream_type = hdcp->content_type;

 return 0;
}
