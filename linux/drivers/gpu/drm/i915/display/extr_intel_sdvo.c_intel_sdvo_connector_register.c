
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_6__ {TYPE_4__ kobj; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;
struct intel_sdvo {TYPE_3__ ddc; } ;
struct drm_connector {TYPE_1__* kdev; } ;
struct TYPE_5__ {int kobj; } ;


 struct intel_sdvo* intel_attached_sdvo (struct drm_connector*) ;
 int intel_connector_register (struct drm_connector*) ;
 int sysfs_create_link (int *,TYPE_4__*,int ) ;

__attribute__((used)) static int
intel_sdvo_connector_register(struct drm_connector *connector)
{
 struct intel_sdvo *sdvo = intel_attached_sdvo(connector);
 int ret;

 ret = intel_connector_register(connector);
 if (ret)
  return ret;

 return sysfs_create_link(&connector->kdev->kobj,
     &sdvo->ddc.dev.kobj,
     sdvo->ddc.dev.kobj.name);
}
