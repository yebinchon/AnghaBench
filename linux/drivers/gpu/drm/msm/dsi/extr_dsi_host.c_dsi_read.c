
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct msm_dsi_host {scalar_t__ ctrl_base; } ;


 scalar_t__ msm_readl (scalar_t__) ;

__attribute__((used)) static inline u32 dsi_read(struct msm_dsi_host *msm_host, u32 reg)
{
 return msm_readl(msm_host->ctrl_base + reg);
}
