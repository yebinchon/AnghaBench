
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_iproc_i2c_dev {int xfer_is_done; int done; scalar_t__ irq; } ;


 int BIT (int ) ;
 int IS_M_RX_THLD_SHIFT ;
 int IS_M_START_BUSY_SHIFT ;
 int IS_M_TX_UNDERRUN_SHIFT ;
 int bcm_iproc_i2c_read (struct bcm_iproc_i2c_dev*) ;
 int bcm_iproc_i2c_send (struct bcm_iproc_i2c_dev*) ;
 int complete (int *) ;

__attribute__((used)) static void bcm_iproc_i2c_process_m_event(struct bcm_iproc_i2c_dev *iproc_i2c,
       u32 status)
{

 if (status & BIT(IS_M_TX_UNDERRUN_SHIFT))
  bcm_iproc_i2c_send(iproc_i2c);


 if (status & BIT(IS_M_RX_THLD_SHIFT))
  bcm_iproc_i2c_read(iproc_i2c);


 if (status & BIT(IS_M_START_BUSY_SHIFT)) {
  iproc_i2c->xfer_is_done = 1;
  if (iproc_i2c->irq)
   complete(&iproc_i2c->done);
 }
}
