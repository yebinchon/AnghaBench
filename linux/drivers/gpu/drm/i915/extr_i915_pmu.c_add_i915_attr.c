
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {char const* name; int mode; } ;
struct TYPE_3__ {int show; TYPE_2__ attr; } ;
struct i915_ext_attribute {int val; TYPE_1__ attr; } ;


 int i915_pmu_event_show ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static struct i915_ext_attribute *
add_i915_attr(struct i915_ext_attribute *attr, const char *name, u64 config)
{
 sysfs_attr_init(&attr->attr.attr);
 attr->attr.attr.name = name;
 attr->attr.attr.mode = 0444;
 attr->attr.show = i915_pmu_event_show;
 attr->val = config;

 return ++attr;
}
