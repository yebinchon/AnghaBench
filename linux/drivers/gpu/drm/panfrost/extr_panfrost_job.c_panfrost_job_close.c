
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_file_priv {int * sched_entity; } ;


 int NUM_JOB_SLOTS ;
 int drm_sched_entity_destroy (int *) ;

void panfrost_job_close(struct panfrost_file_priv *panfrost_priv)
{
 int i;

 for (i = 0; i < NUM_JOB_SLOTS; i++)
  drm_sched_entity_destroy(&panfrost_priv->sched_entity[i]);
}
