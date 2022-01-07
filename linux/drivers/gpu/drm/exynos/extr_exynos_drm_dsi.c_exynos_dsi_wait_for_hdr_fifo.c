
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_dsi {int dummy; } ;


 int DSIM_FIFOCTRL_REG ;
 int DSIM_SFR_HEADER_FULL ;
 int ETIMEDOUT ;
 int cond_resched () ;
 int exynos_dsi_read (struct exynos_dsi*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int exynos_dsi_wait_for_hdr_fifo(struct exynos_dsi *dsi)
{
 int timeout = 2000;

 do {
  u32 reg = exynos_dsi_read(dsi, DSIM_FIFOCTRL_REG);

  if (!(reg & DSIM_SFR_HEADER_FULL))
   return 0;

  if (!cond_resched())
   usleep_range(950, 1050);
 } while (--timeout);

 return -ETIMEDOUT;
}
