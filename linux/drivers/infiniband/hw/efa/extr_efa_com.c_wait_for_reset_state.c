
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct efa_com_dev {int efa_dev; } ;


 int EFA_POLL_INTERVAL_MS ;
 int EFA_REGS_DEV_STS_OFF ;
 scalar_t__ EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK ;
 int ETIME ;
 scalar_t__ efa_com_reg_read32 (struct efa_com_dev*,int ) ;
 int ibdev_dbg (int ,char*,scalar_t__) ;
 int msleep (int ) ;

__attribute__((used)) static int wait_for_reset_state(struct efa_com_dev *edev, u32 timeout,
    u16 exp_state)
{
 u32 val, i;

 for (i = 0; i < timeout; i++) {
  val = efa_com_reg_read32(edev, EFA_REGS_DEV_STS_OFF);

  if ((val & EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK) ==
      exp_state)
   return 0;

  ibdev_dbg(edev->efa_dev, "Reset indication val %d\n", val);
  msleep(EFA_POLL_INTERVAL_MS);
 }

 return -ETIME;
}
