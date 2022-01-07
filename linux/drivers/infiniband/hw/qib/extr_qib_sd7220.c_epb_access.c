
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct qib_devdata {int dummy; } ;


 int EPB_ACC_GNT ;
 int EPB_ACC_REQ ;



 int kr_ibsd_epb_access_ctrl ;
 int kr_pciesd_epb_access_ctrl ;
 int kr_scratch ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int epb_access(struct qib_devdata *dd, int sdnum, int claim)
{
 u16 acc;
 u64 accval;
 int owned = 0;
 u64 oct_sel = 0;

 switch (sdnum) {
 case 130:




  acc = kr_ibsd_epb_access_ctrl;
  break;

 case 129:
 case 128:

  acc = kr_pciesd_epb_access_ctrl;
  oct_sel = (2 << (sdnum - 129));
  break;

 default:
  return 0;
 }


 qib_read_kreg32(dd, kr_scratch);
 udelay(15);

 accval = qib_read_kreg32(dd, acc);

 owned = !!(accval & EPB_ACC_GNT);
 if (claim < 0) {

  u64 pollval;




  u64 newval = 0;

  qib_write_kreg(dd, acc, newval);

  pollval = qib_read_kreg32(dd, acc);
  udelay(5);
  pollval = qib_read_kreg32(dd, acc);
  if (pollval & EPB_ACC_GNT)
   owned = -1;
 } else if (claim > 0) {

  u64 pollval;
  u64 newval = EPB_ACC_REQ | oct_sel;

  qib_write_kreg(dd, acc, newval);

  pollval = qib_read_kreg32(dd, acc);
  udelay(5);
  pollval = qib_read_kreg32(dd, acc);
  if (!(pollval & EPB_ACC_GNT))
   owned = -1;
 }
 return owned;
}
