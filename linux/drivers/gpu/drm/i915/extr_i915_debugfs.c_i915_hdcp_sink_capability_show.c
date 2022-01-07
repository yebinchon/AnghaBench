
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct drm_connector* private; } ;
struct TYPE_3__ {int shim; } ;
struct intel_connector {TYPE_1__ hdcp; } ;
struct TYPE_4__ {int id; } ;
struct drm_connector {scalar_t__ status; TYPE_2__ base; int name; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ connector_status_connected ;
 int intel_hdcp_info (struct seq_file*,struct intel_connector*) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
{
 struct drm_connector *connector = m->private;
 struct intel_connector *intel_connector = to_intel_connector(connector);

 if (connector->status != connector_status_connected)
  return -ENODEV;


 if (!intel_connector->hdcp.shim)
  return -EINVAL;

 seq_printf(m, "%s:%d HDCP version: ", connector->name,
     connector->base.id);
 intel_hdcp_info(m, intel_connector);

 return 0;
}
