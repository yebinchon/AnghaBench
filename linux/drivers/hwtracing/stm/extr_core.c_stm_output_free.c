
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm_output {int lock; scalar_t__ nr_chans; } ;
struct stm_device {int mc_lock; TYPE_1__* pdrv; } ;
struct TYPE_2__ {int (* output_close ) (struct stm_output*) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stm_output_disclaim (struct stm_device*,struct stm_output*) ;
 int stub1 (struct stm_output*) ;

__attribute__((used)) static void stm_output_free(struct stm_device *stm, struct stm_output *output)
{
 spin_lock(&stm->mc_lock);
 spin_lock(&output->lock);
 if (output->nr_chans)
  stm_output_disclaim(stm, output);
 if (stm->pdrv && stm->pdrv->output_close)
  stm->pdrv->output_close(output);
 spin_unlock(&output->lock);
 spin_unlock(&stm->mc_lock);
}
