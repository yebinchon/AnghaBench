
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct attribute** attrs; } ;
struct pmbus_data {int num_attributes; int max_attributes; TYPE_1__ group; } ;
struct attribute {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PMBUS_ATTR_ALLOC_SIZE ;
 void* krealloc (struct attribute**,int,int ) ;

__attribute__((used)) static int pmbus_add_attribute(struct pmbus_data *data, struct attribute *attr)
{
 if (data->num_attributes >= data->max_attributes - 1) {
  int new_max_attrs = data->max_attributes + PMBUS_ATTR_ALLOC_SIZE;
  void *new_attrs = krealloc(data->group.attrs,
        new_max_attrs * sizeof(void *),
        GFP_KERNEL);
  if (!new_attrs)
   return -ENOMEM;
  data->group.attrs = new_attrs;
  data->max_attributes = new_max_attrs;
 }

 data->group.attrs[data->num_attributes++] = attr;
 data->group.attrs[data->num_attributes] = ((void*)0);
 return 0;
}
