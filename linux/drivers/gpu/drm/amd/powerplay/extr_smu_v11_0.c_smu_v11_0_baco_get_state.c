
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_baco_context {int state; int mutex; } ;
struct smu_context {struct smu_baco_context smu_baco; } ;
typedef enum smu_baco_state { ____Placeholder_smu_baco_state } smu_baco_state ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static enum smu_baco_state smu_v11_0_baco_get_state(struct smu_context *smu)
{
 struct smu_baco_context *smu_baco = &smu->smu_baco;
 enum smu_baco_state baco_state;

 mutex_lock(&smu_baco->mutex);
 baco_state = smu_baco->state;
 mutex_unlock(&smu_baco->mutex);

 return baco_state;
}
