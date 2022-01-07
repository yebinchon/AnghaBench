
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_queue_manager {TYPE_2__* dev; } ;
struct TYPE_4__ {int kgd; TYPE_1__* kfd2kgd; } ;
struct TYPE_3__ {int (* init_interrupts ) (int ,unsigned int) ;} ;


 unsigned int get_pipes_per_mec (struct device_queue_manager*) ;
 scalar_t__ is_pipe_enabled (struct device_queue_manager*,int ,unsigned int) ;
 int stub1 (int ,unsigned int) ;

__attribute__((used)) static void init_interrupts(struct device_queue_manager *dqm)
{
 unsigned int i;

 for (i = 0 ; i < get_pipes_per_mec(dqm) ; i++)
  if (is_pipe_enabled(dqm, 0, i))
   dqm->dev->kfd2kgd->init_interrupts(dqm->dev->kgd, i);
}
