
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcom_task {size_t tasknum; struct bcom_task* cookie; int bd; int irq; } ;
struct TYPE_4__ {TYPE_1__* tdt; } ;
struct TYPE_3__ {scalar_t__ stop; scalar_t__ start; } ;


 int bcom_disable_task (size_t) ;
 TYPE_2__* bcom_eng ;
 int bcom_sram_free (int ) ;
 int irq_dispose_mapping (int ) ;
 int kfree (struct bcom_task*) ;

void
bcom_task_free(struct bcom_task *tsk)
{

 bcom_disable_task(tsk->tasknum);


 bcom_eng->tdt[tsk->tasknum].start = 0;
 bcom_eng->tdt[tsk->tasknum].stop = 0;


 irq_dispose_mapping(tsk->irq);
 bcom_sram_free(tsk->bd);
 kfree(tsk->cookie);
 kfree(tsk);
}
