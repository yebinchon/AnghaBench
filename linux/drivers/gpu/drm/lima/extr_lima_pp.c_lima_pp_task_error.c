
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lima_sched_pipe {int num_processor; struct lima_ip** processor; } ;
struct lima_ip {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int LIMA_PP_INT_STATUS ;
 int LIMA_PP_STATUS ;
 int dev_err (int ,char*,int,int ,int ) ;
 int lima_pp_hard_reset (struct lima_ip*) ;
 int pp_read (int ) ;

__attribute__((used)) static void lima_pp_task_error(struct lima_sched_pipe *pipe)
{
 int i;

 for (i = 0; i < pipe->num_processor; i++) {
  struct lima_ip *ip = pipe->processor[i];

  dev_err(ip->dev->dev, "pp task error %d int_state=%x status=%x\n",
   i, pp_read(LIMA_PP_INT_STATUS), pp_read(LIMA_PP_STATUS));

  lima_pp_hard_reset(ip);
 }
}
