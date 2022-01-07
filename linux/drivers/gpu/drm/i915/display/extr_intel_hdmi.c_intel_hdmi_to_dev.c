
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_hdmi {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct TYPE_6__ {TYPE_2__ base; } ;


 TYPE_3__* hdmi_to_dig_port (struct intel_hdmi*) ;

__attribute__((used)) static struct drm_device *intel_hdmi_to_dev(struct intel_hdmi *intel_hdmi)
{
 return hdmi_to_dig_port(intel_hdmi)->base.base.dev;
}
