
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_dev {int debugfs_list; } ;
struct TYPE_2__ {char const* name; int (* show ) (struct seq_file*,void*) ;void* data; } ;
struct vc4_debugfs_info_entry {int link; TYPE_1__ info; } ;
struct drm_device {int dev; } ;


 int GFP_KERNEL ;
 struct vc4_debugfs_info_entry* devm_kzalloc (int ,int,int ) ;
 int list_add (int *,int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

void vc4_debugfs_add_file(struct drm_device *dev,
     const char *name,
     int (*show)(struct seq_file*, void*),
     void *data)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 struct vc4_debugfs_info_entry *entry =
  devm_kzalloc(dev->dev, sizeof(*entry), GFP_KERNEL);

 if (!entry)
  return;

 entry->info.name = name;
 entry->info.show = show;
 entry->info.data = data;

 list_add(&entry->link, &vc4->debugfs_list);
}
