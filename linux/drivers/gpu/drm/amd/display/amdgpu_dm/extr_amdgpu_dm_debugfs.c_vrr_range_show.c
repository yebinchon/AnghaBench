
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct drm_connector* private; } ;
struct drm_connector {scalar_t__ status; } ;
struct amdgpu_dm_connector {scalar_t__ max_vfreq; scalar_t__ min_vfreq; } ;


 int ENODEV ;
 scalar_t__ connector_status_connected ;
 int seq_printf (struct seq_file*,char*,unsigned int) ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static int vrr_range_show(struct seq_file *m, void *data)
{
 struct drm_connector *connector = m->private;
 struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);

 if (connector->status != connector_status_connected)
  return -ENODEV;

 seq_printf(m, "Min: %u\n", (unsigned int)aconnector->min_vfreq);
 seq_printf(m, "Max: %u\n", (unsigned int)aconnector->max_vfreq);

 return 0;
}
