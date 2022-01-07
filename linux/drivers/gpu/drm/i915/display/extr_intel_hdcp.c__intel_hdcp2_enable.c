
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_hdcp {int hdcp2_encrypted; int content_type; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ base; int name; } ;
struct intel_connector {TYPE_2__ base; struct intel_hdcp hdcp; } ;


 int DRM_DEBUG_KMS (char*,int ,int,...) ;
 int hdcp2_authenticate_and_encrypt (struct intel_connector*) ;

__attribute__((used)) static int _intel_hdcp2_enable(struct intel_connector *connector)
{
 struct intel_hdcp *hdcp = &connector->hdcp;
 int ret;

 DRM_DEBUG_KMS("[%s:%d] HDCP2.2 is being enabled. Type: %d\n",
        connector->base.name, connector->base.base.id,
        hdcp->content_type);

 ret = hdcp2_authenticate_and_encrypt(connector);
 if (ret) {
  DRM_DEBUG_KMS("HDCP2 Type%d  Enabling Failed. (%d)\n",
         hdcp->content_type, ret);
  return ret;
 }

 DRM_DEBUG_KMS("[%s:%d] HDCP2.2 is enabled. Type %d\n",
        connector->base.name, connector->base.base.id,
        hdcp->content_type);

 hdcp->hdcp2_encrypted = 1;
 return 0;
}
