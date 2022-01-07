
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qib_pportdata {int link_width_active; int link_speed_active; int link_width_enabled; int link_speed_enabled; int vls_operational; TYPE_2__* dd; } ;
struct TYPE_4__ {TYPE_1__* cspec; } ;
struct TYPE_3__ {int ibcctrl; } ;


 int EINVAL ;
 int IBCCtrl ;
 int IB_LINKINITCMD_POLL ;
 int IB_LINKINITCMD_SLEEP ;
 int LinkDownDefaultState ;
 int OverrunThreshold ;
 int PhyerrThreshold ;
 int SYM_FIELD (int,int ,int ) ;
 int SYM_MASK (int ,int ) ;

__attribute__((used)) static int qib_6120_get_ib_cfg(struct qib_pportdata *ppd, int which)
{
 int ret;

 switch (which) {
 case 137:
  ret = ppd->link_width_active;
  break;

 case 131:
  ret = ppd->link_speed_active;
  break;

 case 136:
  ret = ppd->link_width_enabled;
  break;

 case 130:
  ret = ppd->link_speed_enabled;
  break;

 case 135:
  ret = ppd->vls_operational;
  break;

 case 129:
  ret = 0;
  break;

 case 128:
  ret = 0;
  break;

 case 134:
  ret = SYM_FIELD(ppd->dd->cspec->ibcctrl, IBCCtrl,
    OverrunThreshold);
  break;

 case 133:
  ret = SYM_FIELD(ppd->dd->cspec->ibcctrl, IBCCtrl,
    PhyerrThreshold);
  break;

 case 138:

  ret = (ppd->dd->cspec->ibcctrl &
         SYM_MASK(IBCCtrl, LinkDownDefaultState)) ?
   IB_LINKINITCMD_SLEEP : IB_LINKINITCMD_POLL;
  break;

 case 139:
  ret = 0;
  break;

 case 132:
  ret = 250;
  break;

 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
