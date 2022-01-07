
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int irqreturn_t ;


 scalar_t__ IPCMMIS (int) ;
 scalar_t__ IPCMxSEND (int ) ;
 int IPC_RX_MBOX ;
 int IPC_TX_MBOX ;
 int IRQ_HANDLED ;
 int MBOX_MASK (int ) ;
 int __ipc_rcv (int ,int*) ;
 int atomic_notifier_call_chain (int *,int,int*) ;
 int complete (int *) ;
 scalar_t__ ipc_base ;
 int ipc_completion ;
 int ipc_notifier ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t ipc_handler(int irq, void *dev)
{
 u32 irq_stat;
 u32 data[7];

 irq_stat = readl_relaxed(ipc_base + IPCMMIS(1));
 if (irq_stat & MBOX_MASK(IPC_TX_MBOX)) {
  writel_relaxed(0, ipc_base + IPCMxSEND(IPC_TX_MBOX));
  complete(&ipc_completion);
 }
 if (irq_stat & MBOX_MASK(IPC_RX_MBOX)) {
  __ipc_rcv(IPC_RX_MBOX, data);
  atomic_notifier_call_chain(&ipc_notifier, data[0], data + 1);
  writel_relaxed(2, ipc_base + IPCMxSEND(IPC_RX_MBOX));
 }

 return IRQ_HANDLED;
}
