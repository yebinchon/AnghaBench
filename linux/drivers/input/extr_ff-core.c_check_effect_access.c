
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct ff_device {int max_effects; struct file** effect_owners; } ;


 int EACCES ;
 int EINVAL ;

__attribute__((used)) static int check_effect_access(struct ff_device *ff, int effect_id,
    struct file *file)
{
 if (effect_id < 0 || effect_id >= ff->max_effects ||
     !ff->effect_owners[effect_id])
  return -EINVAL;

 if (file && ff->effect_owners[effect_id] != file)
  return -EACCES;

 return 0;
}
