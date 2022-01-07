
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct qib_pportdata {int ibmaxlen; int link_speed_enabled; int link_width_enabled; int guid; TYPE_1__* cpspec; struct qib_devdata* dd; } ;
struct qib_devdata {int control; int base_guid; } ;
struct TYPE_2__ {int ibdeltainprog; int ibcctrl; int ibcddrctrl; void* iblnkerrsnap; void* ibsymsnap; } ;


 int CreditScale ;
 int FlowCtrlPeriod ;
 int FlowCtrlWaterMark ;
 int IBA7220_IBC_HRTBT_MASK ;
 int IBA7220_IBC_HRTBT_SHIFT ;
 int IBA7220_IBC_IBTA_1_2_MASK ;
 int IBA7220_IBC_LANE_REV_SUPPORTED ;
 int IBA7220_IBC_RXPOL_MASK ;
 int IBA7220_IBC_RXPOL_SHIFT ;
 int IBA7220_IBC_SPEED_AUTONEG_MASK ;
 int IBA7220_IBC_SPEED_DDR ;
 int IBA7220_IBC_SPEED_SDR ;
 int IBA7220_IBC_WIDTH_1X_ONLY ;
 int IBA7220_IBC_WIDTH_4X_ONLY ;
 int IBA7220_IBC_WIDTH_AUTONEG ;
 int IBCCtrl ;
 int IB_WIDTH_1X ;
 int IB_WIDTH_4X ;
 int MaxPktLen ;
 int OverrunThreshold ;
 int PhyerrThreshold ;
 int QIB_IB_DDR ;
 int QIB_IB_SDR ;
 int QLOGIC_IB_C_LINKENABLE ;
 int QLOGIC_IB_IBCC_LINKINITCMD_DISABLE ;
 int QLOGIC_IB_IBCC_LINKINITCMD_SHIFT ;
 int QLOGIC_IB_XGXS_FC_SAFE ;
 int QLOGIC_IB_XGXS_RESET ;
 int SYM_LSB (int ,int ) ;
 int be64_to_cpu (int ) ;
 int cr_iblinkerrrecov ;
 int cr_ibsymbolerr ;
 int kr_control ;
 int kr_hrtbt_guid ;
 int kr_ibcctrl ;
 int kr_ibcddrctrl ;
 int kr_ncmodectrl ;
 int kr_scratch ;
 int kr_xgxs_cfg ;
 scalar_t__ qib_compat_ddr_negotiate ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 void* qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_sd7220_init (struct qib_devdata*) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 void* read_7220_creg32 (struct qib_devdata*,int ) ;

__attribute__((used)) static int qib_7220_bringup_serdes(struct qib_pportdata *ppd)
{
 struct qib_devdata *dd = ppd->dd;
 u64 val, prev_val, guid, ibc;
 int ret = 0;


 dd->control &= ~QLOGIC_IB_C_LINKENABLE;
 qib_write_kreg(dd, kr_control, 0ULL);

 if (qib_compat_ddr_negotiate) {
  ppd->cpspec->ibdeltainprog = 1;
  ppd->cpspec->ibsymsnap = read_7220_creg32(dd, cr_ibsymbolerr);
  ppd->cpspec->iblnkerrsnap =
   read_7220_creg32(dd, cr_iblinkerrrecov);
 }


 ibc = 0x5ULL << SYM_LSB(IBCCtrl, FlowCtrlWaterMark);





 ibc |= 0x3ULL << SYM_LSB(IBCCtrl, FlowCtrlPeriod);

 ibc |= 0xfULL << SYM_LSB(IBCCtrl, PhyerrThreshold);

 ibc |= 4ULL << SYM_LSB(IBCCtrl, CreditScale);

 ibc |= 0xfULL << SYM_LSB(IBCCtrl, OverrunThreshold);




 ibc |= ((u64)(ppd->ibmaxlen >> 2) + 1) << SYM_LSB(IBCCtrl, MaxPktLen);
 ppd->cpspec->ibcctrl = ibc;


 val = ppd->cpspec->ibcctrl | (QLOGIC_IB_IBCC_LINKINITCMD_DISABLE <<
  QLOGIC_IB_IBCC_LINKINITCMD_SHIFT);
 qib_write_kreg(dd, kr_ibcctrl, val);

 if (!ppd->cpspec->ibcddrctrl) {

  ppd->cpspec->ibcddrctrl = qib_read_kreg64(dd, kr_ibcddrctrl);

  if (ppd->link_speed_enabled == (QIB_IB_SDR | QIB_IB_DDR))
   ppd->cpspec->ibcddrctrl |=
    IBA7220_IBC_SPEED_AUTONEG_MASK |
    IBA7220_IBC_IBTA_1_2_MASK;
  else
   ppd->cpspec->ibcddrctrl |=
    ppd->link_speed_enabled == QIB_IB_DDR ?
    IBA7220_IBC_SPEED_DDR : IBA7220_IBC_SPEED_SDR;
  if ((ppd->link_width_enabled & (IB_WIDTH_1X | IB_WIDTH_4X)) ==
      (IB_WIDTH_1X | IB_WIDTH_4X))
   ppd->cpspec->ibcddrctrl |= IBA7220_IBC_WIDTH_AUTONEG;
  else
   ppd->cpspec->ibcddrctrl |=
    ppd->link_width_enabled == IB_WIDTH_4X ?
    IBA7220_IBC_WIDTH_4X_ONLY :
    IBA7220_IBC_WIDTH_1X_ONLY;


  ppd->cpspec->ibcddrctrl |=
   IBA7220_IBC_RXPOL_MASK << IBA7220_IBC_RXPOL_SHIFT;
  ppd->cpspec->ibcddrctrl |=
   IBA7220_IBC_HRTBT_MASK << IBA7220_IBC_HRTBT_SHIFT;


  ppd->cpspec->ibcddrctrl |= IBA7220_IBC_LANE_REV_SUPPORTED;
 } else

  qib_write_kreg(dd, kr_scratch, 0);

 qib_write_kreg(dd, kr_ibcddrctrl, ppd->cpspec->ibcddrctrl);
 qib_write_kreg(dd, kr_scratch, 0);

 qib_write_kreg(dd, kr_ncmodectrl, 0Ull);
 qib_write_kreg(dd, kr_scratch, 0);

 ret = qib_sd7220_init(dd);

 val = qib_read_kreg64(dd, kr_xgxs_cfg);
 prev_val = val;
 val |= QLOGIC_IB_XGXS_FC_SAFE;
 if (val != prev_val) {
  qib_write_kreg(dd, kr_xgxs_cfg, val);
  qib_read_kreg32(dd, kr_scratch);
 }
 if (val & QLOGIC_IB_XGXS_RESET)
  val &= ~QLOGIC_IB_XGXS_RESET;
 if (val != prev_val)
  qib_write_kreg(dd, kr_xgxs_cfg, val);


 if (!ppd->guid)
  ppd->guid = dd->base_guid;
 guid = be64_to_cpu(ppd->guid);

 qib_write_kreg(dd, kr_hrtbt_guid, guid);
 if (!ret) {
  dd->control |= QLOGIC_IB_C_LINKENABLE;
  qib_write_kreg(dd, kr_control, dd->control);
 } else

  qib_write_kreg(dd, kr_scratch, 0);
 return ret;
}
