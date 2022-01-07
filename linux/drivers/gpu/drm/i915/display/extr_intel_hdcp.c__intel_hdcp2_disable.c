
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int hdcp2_encrypted; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ base; int name; } ;
struct intel_connector {TYPE_3__ hdcp; TYPE_2__ base; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 scalar_t__ hdcp2_deauthenticate_port (struct intel_connector*) ;
 int hdcp2_disable_encryption (struct intel_connector*) ;

__attribute__((used)) static int _intel_hdcp2_disable(struct intel_connector *connector)
{
 int ret;

 DRM_DEBUG_KMS("[%s:%d] HDCP2.2 is being Disabled\n",
        connector->base.name, connector->base.base.id);

 ret = hdcp2_disable_encryption(connector);

 if (hdcp2_deauthenticate_port(connector) < 0)
  DRM_DEBUG_KMS("Port deauth failed.\n");

 connector->hdcp.hdcp2_encrypted = 0;

 return ret;
}
