
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct qib_pportdata {int link_width_enabled; int link_width_active; int link_speed_enabled; int link_speed_active; int vls_operational; TYPE_1__* cpspec; } ;
struct TYPE_2__ {int ibcctrl_a; int ibcctrl_b; } ;


 int EINVAL ;
 int IBA7322_IBC_HRTBT_LSB ;
 int IBA7322_IBC_HRTBT_RMASK ;
 int IBCCtrlA_0 ;
 int IBCCtrlB_0 ;
 int IBCStatusB_0 ;
 int IB_LANE_REV_SUPPORTED ;
 int IB_LINKINITCMD_POLL ;
 int IB_LINKINITCMD_SLEEP ;
 int IB_POLARITY_REV_SUPP ;
 int LinkDownDefaultState ;
 int LinkRoundTripLatency ;
 int OverrunThreshold ;
 int PhyerrThreshold ;
 int QIB_IB_DDR ;
 int QIB_IB_QDR ;
 int SYM_FIELD (int,int ,int ) ;
 int SYM_LSB (int ,int ) ;
 int SYM_MASK (int ,int ) ;
 int SYM_RMASK (int ,int ) ;
 int krp_ibcstatus_b ;
 int qib_read_kreg_port (struct qib_pportdata*,int ) ;

__attribute__((used)) static int qib_7322_get_ib_cfg(struct qib_pportdata *ppd, int which)
{

 int lsb, ret = 0;
 u64 maskr;

 switch (which) {

 case 137:
  ret = ppd->link_width_enabled;
  goto done;

 case 138:
  ret = ppd->link_width_active;
  goto done;

 case 130:
  ret = ppd->link_speed_enabled;
  goto done;

 case 131:
  ret = ppd->link_speed_active;
  goto done;

 case 132:
  lsb = SYM_LSB(IBCCtrlB_0, IB_POLARITY_REV_SUPP);
  maskr = SYM_RMASK(IBCCtrlB_0, IB_POLARITY_REV_SUPP);
  break;

 case 139:
  lsb = SYM_LSB(IBCCtrlB_0, IB_LANE_REV_SUPPORTED);
  maskr = SYM_RMASK(IBCCtrlB_0, IB_LANE_REV_SUPPORTED);
  break;

 case 140:
  ret = qib_read_kreg_port(ppd, krp_ibcstatus_b) &
   SYM_MASK(IBCStatusB_0, LinkRoundTripLatency);
  goto done;

 case 136:
  ret = ppd->vls_operational;
  goto done;

 case 129:
  ret = 16;
  goto done;

 case 128:
  ret = 16;
  goto done;

 case 135:
  ret = SYM_FIELD(ppd->cpspec->ibcctrl_a, IBCCtrlA_0,
    OverrunThreshold);
  goto done;

 case 134:
  ret = SYM_FIELD(ppd->cpspec->ibcctrl_a, IBCCtrlA_0,
    PhyerrThreshold);
  goto done;

 case 141:

  ret = (ppd->cpspec->ibcctrl_a &
         SYM_MASK(IBCCtrlA_0, LinkDownDefaultState)) ?
   IB_LINKINITCMD_SLEEP : IB_LINKINITCMD_POLL;
  goto done;

 case 142:
  lsb = IBA7322_IBC_HRTBT_LSB;
  maskr = IBA7322_IBC_HRTBT_RMASK;
  break;

 case 133:




  if (ppd->link_speed_active == QIB_IB_QDR)
   ret = 3;
  else if (ppd->link_speed_active == QIB_IB_DDR)
   ret = 1;
  else
   ret = 0;
  goto done;

 default:
  ret = -EINVAL;
  goto done;
 }
 ret = (int)((ppd->cpspec->ibcctrl_b >> lsb) & maskr);
done:
 return ret;
}
