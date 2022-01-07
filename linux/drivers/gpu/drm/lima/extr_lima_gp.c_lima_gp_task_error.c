
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lima_sched_pipe {struct lima_ip** processor; } ;
struct lima_ip {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int LIMA_GP_INT_STAT ;
 int LIMA_GP_STATUS ;
 int dev_err (int ,char*,int ,int ) ;
 int gp_read (int ) ;
 int lima_gp_hard_reset (struct lima_ip*) ;

__attribute__((used)) static void lima_gp_task_error(struct lima_sched_pipe *pipe)
{
 struct lima_ip *ip = pipe->processor[0];

 dev_err(ip->dev->dev, "gp task error int_state=%x status=%x\n",
  gp_read(LIMA_GP_INT_STAT), gp_read(LIMA_GP_STATUS));

 lima_gp_hard_reset(ip);
}
