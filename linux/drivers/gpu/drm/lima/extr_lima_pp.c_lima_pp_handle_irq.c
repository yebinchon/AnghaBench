
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_sched_pipe {int error; } ;
struct lima_ip {struct lima_device* dev; } ;
struct lima_device {int dev; struct lima_sched_pipe* pipe; } ;


 int LIMA_PP_INT_CLEAR ;
 int LIMA_PP_INT_MASK ;
 int LIMA_PP_IRQ_MASK_ERROR ;
 int LIMA_PP_STATUS ;
 int dev_err (int ,char*,int,int) ;
 int lima_pipe_pp ;
 int pp_read (int ) ;
 int pp_write (int ,int) ;

__attribute__((used)) static void lima_pp_handle_irq(struct lima_ip *ip, u32 state)
{
 struct lima_device *dev = ip->dev;
 struct lima_sched_pipe *pipe = dev->pipe + lima_pipe_pp;

 if (state & LIMA_PP_IRQ_MASK_ERROR) {
  u32 status = pp_read(LIMA_PP_STATUS);

  dev_err(dev->dev, "pp error irq state=%x status=%x\n",
   state, status);

  pipe->error = 1;


  pp_write(LIMA_PP_INT_MASK, 0);
 }

 pp_write(LIMA_PP_INT_CLEAR, state);
}
