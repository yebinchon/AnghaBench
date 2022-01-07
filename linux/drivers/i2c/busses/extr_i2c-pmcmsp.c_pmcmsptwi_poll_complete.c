
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pmcmsptwi_data {int last_result; scalar_t__ iobase; } ;
struct TYPE_2__ {int dev; } ;


 int MSP_MAX_POLL ;
 int MSP_POLL_DELAY ;
 scalar_t__ MSP_TWI_BUSY_REG_OFFSET ;
 scalar_t__ MSP_TWI_INT_STS_REG_OFFSET ;
 int MSP_TWI_XFER_TIMEOUT ;
 int dev_dbg (int *,char*) ;
 TYPE_1__ pmcmsptwi_adapter ;
 int pmcmsptwi_get_result (scalar_t__) ;
 scalar_t__ pmcmsptwi_readl (scalar_t__) ;
 int pmcmsptwi_writel (scalar_t__,scalar_t__) ;
 int udelay (int ) ;

__attribute__((used)) static void pmcmsptwi_poll_complete(struct pmcmsptwi_data *data)
{
 int i;

 for (i = 0; i < MSP_MAX_POLL; i++) {
  u32 val = pmcmsptwi_readl(data->iobase +
      MSP_TWI_BUSY_REG_OFFSET);
  if (val == 0) {
   u32 reason = pmcmsptwi_readl(data->iobase +
      MSP_TWI_INT_STS_REG_OFFSET);
   pmcmsptwi_writel(reason, data->iobase +
      MSP_TWI_INT_STS_REG_OFFSET);
   data->last_result = pmcmsptwi_get_result(reason);
   return;
  }
  udelay(MSP_POLL_DELAY);
 }

 dev_dbg(&pmcmsptwi_adapter.dev, "Result: Poll timeout\n");
 data->last_result = MSP_TWI_XFER_TIMEOUT;
}
