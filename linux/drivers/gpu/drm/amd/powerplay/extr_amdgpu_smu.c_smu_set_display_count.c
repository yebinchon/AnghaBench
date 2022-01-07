
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_init_display_count (struct smu_context*,int ) ;

int smu_set_display_count(struct smu_context *smu, uint32_t count)
{
 int ret = 0;

 mutex_lock(&smu->mutex);
 ret = smu_init_display_count(smu, count);
 mutex_unlock(&smu->mutex);

 return ret;
}
