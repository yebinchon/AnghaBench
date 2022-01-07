
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_gpu_state {int nr_bos; TYPE_1__* registers; TYPE_1__* cmd; TYPE_1__* comm; TYPE_1__* bos; TYPE_2__* ring; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int data; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int kfree (TYPE_1__*) ;
 int kvfree (int ) ;

void adreno_gpu_state_destroy(struct msm_gpu_state *state)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(state->ring); i++)
  kvfree(state->ring[i].data);

 for (i = 0; state->bos && i < state->nr_bos; i++)
  kvfree(state->bos[i].data);

 kfree(state->bos);
 kfree(state->comm);
 kfree(state->cmd);
 kfree(state->registers);
}
