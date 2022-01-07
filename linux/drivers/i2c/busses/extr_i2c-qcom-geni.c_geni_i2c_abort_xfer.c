
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; scalar_t__ base; } ;
struct geni_i2c_dev {TYPE_1__ se; int done; int lock; int * cur; } ;


 unsigned long ABORT_TIMEOUT ;
 int GENI_TIMEOUT ;
 int M_CMD_ABORT_EN ;
 scalar_t__ SE_GENI_M_IRQ_STATUS ;
 int dev_err (int ,char*) ;
 int geni_i2c_err (struct geni_i2c_dev*,int ) ;
 int geni_se_abort_m_cmd (TYPE_1__*) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static void geni_i2c_abort_xfer(struct geni_i2c_dev *gi2c)
{
 u32 val;
 unsigned long time_left = ABORT_TIMEOUT;
 unsigned long flags;

 spin_lock_irqsave(&gi2c->lock, flags);
 geni_i2c_err(gi2c, GENI_TIMEOUT);
 gi2c->cur = ((void*)0);
 geni_se_abort_m_cmd(&gi2c->se);
 spin_unlock_irqrestore(&gi2c->lock, flags);
 do {
  time_left = wait_for_completion_timeout(&gi2c->done, time_left);
  val = readl_relaxed(gi2c->se.base + SE_GENI_M_IRQ_STATUS);
 } while (!(val & M_CMD_ABORT_EN) && time_left);

 if (!(val & M_CMD_ABORT_EN))
  dev_err(gi2c->se.dev, "Timeout abort_m_cmd\n");
}
