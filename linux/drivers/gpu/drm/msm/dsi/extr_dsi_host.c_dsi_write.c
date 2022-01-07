
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct msm_dsi_host {scalar_t__ ctrl_base; } ;


 int msm_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dsi_write(struct msm_dsi_host *msm_host, u32 reg, u32 data)
{
 msm_writel(data, msm_host->ctrl_base + reg);
}
