
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcde_dsi {int dev; scalar_t__ regs; } ;


 scalar_t__ DSI_CMD_MODE_STS ;
 int DSI_CMD_MODE_STS_CSM_RUNNING ;
 int dev_warn (int ,char*) ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mcde_dsi_wait_for_command_mode_stop(struct mcde_dsi *d)
{
 u32 val;
 int i;





 i = 0;
 val = DSI_CMD_MODE_STS_CSM_RUNNING;
 while ((readl(d->regs + DSI_CMD_MODE_STS) & val) == val) {

  usleep_range(1000, 2000);
  if (i++ == 100) {
   dev_warn(d->dev,
     "could not get out of command mode\n");
   return;
  }
 }
}
