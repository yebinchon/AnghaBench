
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_sched_task {struct drm_lima_gp_frame* frame; } ;
struct lima_sched_pipe {struct lima_ip** processor; } ;
struct lima_ip {scalar_t__ iomem; } ;
struct drm_lima_gp_frame {int * frame; } ;


 int LIMA_GP_CMD ;
 int LIMA_GP_CMD_START_PLBU ;
 int LIMA_GP_CMD_START_VS ;
 int LIMA_GP_CMD_UPDATE_PLBU_ALLOC ;
 int LIMA_GP_FRAME_REG_NUM ;
 int LIMA_GP_PLBUCL_END_ADDR ;
 int LIMA_GP_PLBUCL_START_ADDR ;
 int LIMA_GP_VSCL_END_ADDR ;
 int LIMA_GP_VSCL_START_ADDR ;
 int gp_write (int ,int ) ;
 int lima_gp_soft_reset_async_wait (struct lima_ip*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void lima_gp_task_run(struct lima_sched_pipe *pipe,
        struct lima_sched_task *task)
{
 struct lima_ip *ip = pipe->processor[0];
 struct drm_lima_gp_frame *frame = task->frame;
 u32 *f = frame->frame;
 u32 cmd = 0;
 int i;

 if (f[LIMA_GP_VSCL_START_ADDR >> 2] !=
     f[LIMA_GP_VSCL_END_ADDR >> 2])
  cmd |= LIMA_GP_CMD_START_VS;
 if (f[LIMA_GP_PLBUCL_START_ADDR >> 2] !=
     f[LIMA_GP_PLBUCL_END_ADDR >> 2])
  cmd |= LIMA_GP_CMD_START_PLBU;


 lima_gp_soft_reset_async_wait(ip);

 for (i = 0; i < LIMA_GP_FRAME_REG_NUM; i++)
  writel(f[i], ip->iomem + LIMA_GP_VSCL_START_ADDR + i * 4);

 gp_write(LIMA_GP_CMD, LIMA_GP_CMD_UPDATE_PLBU_ALLOC);
 gp_write(LIMA_GP_CMD, cmd);
}
