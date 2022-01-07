
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_soc {int dummy; } ;


 int DP_S_SRM_MODE_MASK ;
 int DP_S_SRM_MODE_NEXT_FRAME ;
 int DP_S_SRM_MODE_NOW ;
 int IPU_SRM_PRI2 ;
 int ipu_cm_read (struct ipu_soc*,int ) ;
 int ipu_cm_write (struct ipu_soc*,int ,int ) ;

void ipu_srm_dp_update(struct ipu_soc *ipu, bool sync)
{
 u32 val;

 val = ipu_cm_read(ipu, IPU_SRM_PRI2);
 val &= ~DP_S_SRM_MODE_MASK;
 val |= sync ? DP_S_SRM_MODE_NEXT_FRAME :
        DP_S_SRM_MODE_NOW;
 ipu_cm_write(ipu, val, IPU_SRM_PRI2);
}
