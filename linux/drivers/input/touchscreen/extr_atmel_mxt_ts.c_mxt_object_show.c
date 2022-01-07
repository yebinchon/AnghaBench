
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mxt_object {int start_address; int type; } ;
struct mxt_data {int client; struct mxt_object* object_table; TYPE_1__* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int object_num; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 int __mxt_read_reg (int ,int,int,int *) ;
 struct mxt_data* dev_get_drvdata (struct device*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int mxt_obj_instances (struct mxt_object*) ;
 int mxt_obj_size (struct mxt_object*) ;
 int mxt_object_readable (int ) ;
 int mxt_show_instance (char*,int,struct mxt_object*,int,int *) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ) ;

__attribute__((used)) static ssize_t mxt_object_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct mxt_data *data = dev_get_drvdata(dev);
 struct mxt_object *object;
 int count = 0;
 int i, j;
 int error;
 u8 *obuf;


 obuf = kmalloc(256, GFP_KERNEL);
 if (!obuf)
  return -ENOMEM;

 error = 0;
 for (i = 0; i < data->info->object_num; i++) {
  object = data->object_table + i;

  if (!mxt_object_readable(object->type))
   continue;

  count += scnprintf(buf + count, PAGE_SIZE - count,
    "T%u:\n", object->type);

  for (j = 0; j < mxt_obj_instances(object); j++) {
   u16 size = mxt_obj_size(object);
   u16 addr = object->start_address + j * size;

   error = __mxt_read_reg(data->client, addr, size, obuf);
   if (error)
    goto done;

   count = mxt_show_instance(buf, count, object, j, obuf);
  }
 }

done:
 kfree(obuf);
 return error ?: count;
}
