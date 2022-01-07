
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__** attrs; int name; } ;
struct TYPE_8__ {char* name; int mode; } ;
struct TYPE_5__ {TYPE_4__ attr; int * store; int show; } ;
struct i915_oa_config {TYPE_3__ sysfs_metric; TYPE_4__** attrs; int uuid; TYPE_1__ sysfs_metric_id; } ;
struct TYPE_6__ {int metrics_kobj; } ;
struct drm_i915_private {TYPE_2__ perf; } ;


 int S_IRUGO ;
 int show_dynamic_id ;
 int sysfs_attr_init (TYPE_4__*) ;
 int sysfs_create_group (int ,TYPE_3__*) ;

__attribute__((used)) static int create_dynamic_oa_sysfs_entry(struct drm_i915_private *dev_priv,
      struct i915_oa_config *oa_config)
{
 sysfs_attr_init(&oa_config->sysfs_metric_id.attr);
 oa_config->sysfs_metric_id.attr.name = "id";
 oa_config->sysfs_metric_id.attr.mode = S_IRUGO;
 oa_config->sysfs_metric_id.show = show_dynamic_id;
 oa_config->sysfs_metric_id.store = ((void*)0);

 oa_config->attrs[0] = &oa_config->sysfs_metric_id.attr;
 oa_config->attrs[1] = ((void*)0);

 oa_config->sysfs_metric.name = oa_config->uuid;
 oa_config->sysfs_metric.attrs = oa_config->attrs;

 return sysfs_create_group(dev_priv->perf.metrics_kobj,
      &oa_config->sysfs_metric);
}
