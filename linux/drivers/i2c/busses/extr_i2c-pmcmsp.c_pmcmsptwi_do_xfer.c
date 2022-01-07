
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmcmsptwi_data {int last_result; int wait; scalar_t__ irq; scalar_t__ iobase; } ;
typedef enum pmcmsptwi_xfer_result { ____Placeholder_pmcmsptwi_xfer_result } pmcmsptwi_xfer_result ;
struct TYPE_2__ {int dev; } ;


 int MSP_IRQ_TIMEOUT ;
 scalar_t__ MSP_TWI_CMD_REG_OFFSET ;
 int MSP_TWI_XFER_TIMEOUT ;
 int complete (int *) ;
 int dev_dbg (int *,char*,...) ;
 TYPE_1__ pmcmsptwi_adapter ;
 int pmcmsptwi_poll_complete (struct pmcmsptwi_data*) ;
 int pmcmsptwi_writel (int ,scalar_t__) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static enum pmcmsptwi_xfer_result pmcmsptwi_do_xfer(
   u32 reg, struct pmcmsptwi_data *data)
{
 dev_dbg(&pmcmsptwi_adapter.dev, "Writing cmd reg 0x%08x\n", reg);
 pmcmsptwi_writel(reg, data->iobase + MSP_TWI_CMD_REG_OFFSET);
 if (data->irq) {
  unsigned long timeleft = wait_for_completion_timeout(
      &data->wait, MSP_IRQ_TIMEOUT);
  if (timeleft == 0) {
   dev_dbg(&pmcmsptwi_adapter.dev,
    "Result: IRQ timeout\n");
   complete(&data->wait);
   data->last_result = MSP_TWI_XFER_TIMEOUT;
  }
 } else
  pmcmsptwi_poll_complete(data);

 return data->last_result;
}
