
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dev_ops; } ;
struct intel_dvo {TYPE_3__ dev; } ;
struct TYPE_4__ {int id; } ;
struct drm_connector {int name; TYPE_1__ base; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_5__ {int (* detect ) (TYPE_3__*) ;} ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 struct intel_dvo* intel_attached_dvo (struct drm_connector*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static enum drm_connector_status
intel_dvo_detect(struct drm_connector *connector, bool force)
{
 struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
        connector->base.id, connector->name);
 return intel_dvo->dev.dev_ops->detect(&intel_dvo->dev);
}
