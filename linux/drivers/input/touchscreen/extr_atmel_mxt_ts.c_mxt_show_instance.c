
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxt_object {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 int mxt_obj_instances (struct mxt_object*) ;
 int mxt_obj_size (struct mxt_object*) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,...) ;

__attribute__((used)) static ssize_t mxt_show_instance(char *buf, int count,
     struct mxt_object *object, int instance,
     const u8 *val)
{
 int i;

 if (mxt_obj_instances(object) > 1)
  count += scnprintf(buf + count, PAGE_SIZE - count,
       "Instance %u\n", instance);

 for (i = 0; i < mxt_obj_size(object); i++)
  count += scnprintf(buf + count, PAGE_SIZE - count,
    "\t[%2u]: %02x (%d)\n", i, val[i], val[i]);
 count += scnprintf(buf + count, PAGE_SIZE - count, "\n");

 return count;
}
