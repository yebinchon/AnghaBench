
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct find_dmi_data {scalar_t__ instance_countdown; int private; int (* callback ) (struct dmi_sysfs_entry*,struct dmi_header const*,int ) ;int ret; struct dmi_sysfs_entry* entry; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct dmi_sysfs_entry {TYPE_1__ dh; } ;
struct dmi_header {scalar_t__ type; } ;


 int stub1 (struct dmi_sysfs_entry*,struct dmi_header const*,int ) ;

__attribute__((used)) static void find_dmi_entry_helper(const struct dmi_header *dh,
      void *_data)
{
 struct find_dmi_data *data = _data;
 struct dmi_sysfs_entry *entry = data->entry;


 if (dh->type != entry->dh.type)
  return;

 if (data->instance_countdown != 0) {

  data->instance_countdown--;
  return;
 }





 data->instance_countdown--;


 data->ret = data->callback(entry, dh, data->private);
}
