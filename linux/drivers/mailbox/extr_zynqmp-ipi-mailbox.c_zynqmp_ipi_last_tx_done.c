
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct zynqmp_ipi_mchan {scalar_t__ chan_type; } ;
struct zynqmp_ipi_mbox {int dummy; } ;
struct mbox_chan {struct zynqmp_ipi_mchan* con_priv; TYPE_1__* mbox; } ;
struct device {int dummy; } ;
struct arm_smccc_res {int a0; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ IPI_MB_CHNL_TX ;
 int IPI_MB_STATUS_SEND_PENDING ;
 int SMC_IPI_MAILBOX_STATUS_ENQUIRY ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*) ;
 struct zynqmp_ipi_mbox* dev_get_drvdata (struct device*) ;
 int zynqmp_ipi_fw_call (struct zynqmp_ipi_mbox*,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static bool zynqmp_ipi_last_tx_done(struct mbox_chan *chan)
{
 struct device *dev = chan->mbox->dev;
 struct zynqmp_ipi_mbox *ipi_mbox = dev_get_drvdata(dev);
 struct zynqmp_ipi_mchan *mchan = chan->con_priv;
 int ret;
 u64 arg0;
 struct arm_smccc_res res;

 if (WARN_ON(!ipi_mbox)) {
  dev_err(dev, "no platform drv data??\n");
  return 0;
 }

 if (mchan->chan_type == IPI_MB_CHNL_TX) {



  arg0 = SMC_IPI_MAILBOX_STATUS_ENQUIRY;
  zynqmp_ipi_fw_call(ipi_mbox, arg0, 0, &res);

  ret = (int)(res.a0 & 0xFFFFFFFF);
  if (ret < 0 || ret & IPI_MB_STATUS_SEND_PENDING)
   return 0;
  return 1;
 }

 return 1;
}
