
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mxt_object {int start_address; int type; } ;
struct mxt_data {TYPE_1__* client; } ;
struct mxt_cfg {scalar_t__ raw_pos; scalar_t__ raw_size; scalar_t__ raw; int start_ofs; unsigned int mem_size; int * mem; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,unsigned int,unsigned int) ;
 struct mxt_object* mxt_get_object (struct mxt_data*,unsigned int) ;
 unsigned int mxt_obj_instances (struct mxt_object*) ;
 int mxt_obj_size (struct mxt_object*) ;
 int sscanf (scalar_t__,char*,unsigned int*,...) ;

__attribute__((used)) static int mxt_prepare_cfg_mem(struct mxt_data *data, struct mxt_cfg *cfg)
{
 struct device *dev = &data->client->dev;
 struct mxt_object *object;
 unsigned int type, instance, size, byte_offset;
 int offset;
 int ret;
 int i;
 u16 reg;
 u8 val;

 while (cfg->raw_pos < cfg->raw_size) {

  ret = sscanf(cfg->raw + cfg->raw_pos, "%x %x %x%n",
        &type, &instance, &size, &offset);
  if (ret == 0) {

   break;
  } else if (ret != 3) {
   dev_err(dev, "Bad format: failed to parse object\n");
   return -EINVAL;
  }
  cfg->raw_pos += offset;

  object = mxt_get_object(data, type);
  if (!object) {

   for (i = 0; i < size; i++) {
    ret = sscanf(cfg->raw + cfg->raw_pos, "%hhx%n",
          &val, &offset);
    if (ret != 1) {
     dev_err(dev, "Bad format in T%d at %d\n",
      type, i);
     return -EINVAL;
    }
    cfg->raw_pos += offset;
   }
   continue;
  }

  if (size > mxt_obj_size(object)) {





   dev_warn(dev, "Discarding %zu byte(s) in T%u\n",
     size - mxt_obj_size(object), type);
  } else if (mxt_obj_size(object) > size) {
   dev_warn(dev, "Zeroing %zu byte(s) in T%d\n",
     mxt_obj_size(object) - size, type);
  }

  if (instance >= mxt_obj_instances(object)) {
   dev_err(dev, "Object instances exceeded!\n");
   return -EINVAL;
  }

  reg = object->start_address + mxt_obj_size(object) * instance;

  for (i = 0; i < size; i++) {
   ret = sscanf(cfg->raw + cfg->raw_pos, "%hhx%n",
         &val,
         &offset);
   if (ret != 1) {
    dev_err(dev, "Bad format in T%d at %d\n",
     type, i);
    return -EINVAL;
   }
   cfg->raw_pos += offset;

   if (i > mxt_obj_size(object))
    continue;

   byte_offset = reg + i - cfg->start_ofs;

   if (byte_offset >= 0 && byte_offset < cfg->mem_size) {
    *(cfg->mem + byte_offset) = val;
   } else {
    dev_err(dev, "Bad object: reg:%d, T%d, ofs=%d\n",
     reg, object->type, byte_offset);
    return -EINVAL;
   }
  }
 }

 return 0;
}
