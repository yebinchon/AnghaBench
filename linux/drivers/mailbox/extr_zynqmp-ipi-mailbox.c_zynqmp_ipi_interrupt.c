
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct zynqmp_ipi_pdata {int num_mboxes; struct zynqmp_ipi_mbox* ipi_mboxes; } ;
struct zynqmp_ipi_message {int len; int data; } ;
struct zynqmp_ipi_mchan {int req_buf; int req_buf_size; struct zynqmp_ipi_message* rx_buf; scalar_t__ is_opened; } ;
struct TYPE_2__ {struct mbox_chan* chans; } ;
struct zynqmp_ipi_mbox {TYPE_1__ mbox; struct zynqmp_ipi_mchan* mchans; } ;
struct mbox_chan {int dummy; } ;
struct arm_smccc_res {int a0; } ;
typedef int irqreturn_t ;


 size_t IPI_MB_CHNL_RX ;
 int IPI_MB_STATUS_RECV_PENDING ;
 int IPI_SMC_ENQUIRY_DIRQ_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SMC_IPI_MAILBOX_STATUS_ENQUIRY ;
 int mbox_chan_received_data (struct mbox_chan*,void*) ;
 int memcpy_fromio (int ,int ,int ) ;
 int zynqmp_ipi_fw_call (struct zynqmp_ipi_mbox*,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static irqreturn_t zynqmp_ipi_interrupt(int irq, void *data)
{
 struct zynqmp_ipi_pdata *pdata = data;
 struct mbox_chan *chan;
 struct zynqmp_ipi_mbox *ipi_mbox;
 struct zynqmp_ipi_mchan *mchan;
 struct zynqmp_ipi_message *msg;
 u64 arg0, arg3;
 struct arm_smccc_res res;
 int ret, i;

 (void)irq;
 arg0 = SMC_IPI_MAILBOX_STATUS_ENQUIRY;
 arg3 = IPI_SMC_ENQUIRY_DIRQ_MASK;
 for (i = 0; i < pdata->num_mboxes; i++) {
  ipi_mbox = &pdata->ipi_mboxes[i];
  mchan = &ipi_mbox->mchans[IPI_MB_CHNL_RX];
  chan = &ipi_mbox->mbox.chans[IPI_MB_CHNL_RX];
  zynqmp_ipi_fw_call(ipi_mbox, arg0, arg3, &res);
  ret = (int)(res.a0 & 0xFFFFFFFF);
  if (ret > 0 && ret & IPI_MB_STATUS_RECV_PENDING) {
   if (mchan->is_opened) {
    msg = mchan->rx_buf;
    msg->len = mchan->req_buf_size;
    memcpy_fromio(msg->data, mchan->req_buf,
           msg->len);
    mbox_chan_received_data(chan, (void *)msg);
    return IRQ_HANDLED;
   }
  }
 }
 return IRQ_NONE;
}
