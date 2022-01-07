
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_table_context {size_t power_play_table_size; scalar_t__ hardcode_pptable; scalar_t__ power_play_table; } ;
struct smu_context {int mutex; int pm_enabled; struct smu_table_context smu_table; } ;
struct TYPE_2__ {size_t usStructureSize; } ;
typedef TYPE_1__ ATOM_COMMON_TABLE_HEADER ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kzalloc (size_t,int ) ;
 int memcpy (scalar_t__,void*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int pr_info (char*,int) ;
 int smu_reset (struct smu_context*) ;

int smu_sys_set_pp_table(struct smu_context *smu, void *buf, size_t size)
{
 struct smu_table_context *smu_table = &smu->smu_table;
 ATOM_COMMON_TABLE_HEADER *header = (ATOM_COMMON_TABLE_HEADER *)buf;
 int ret = 0;

 if (!smu->pm_enabled)
  return -EINVAL;
 if (header->usStructureSize != size) {
  pr_err("pp table size not matched !\n");
  return -EIO;
 }

 mutex_lock(&smu->mutex);
 if (!smu_table->hardcode_pptable)
  smu_table->hardcode_pptable = kzalloc(size, GFP_KERNEL);
 if (!smu_table->hardcode_pptable) {
  ret = -ENOMEM;
  goto failed;
 }

 memcpy(smu_table->hardcode_pptable, buf, size);
 smu_table->power_play_table = smu_table->hardcode_pptable;
 smu_table->power_play_table_size = size;
 mutex_unlock(&smu->mutex);

 ret = smu_reset(smu);
 if (ret)
  pr_info("smu reset failed, ret = %d\n", ret);

 return ret;

failed:
 mutex_unlock(&smu->mutex);
 return ret;
}
