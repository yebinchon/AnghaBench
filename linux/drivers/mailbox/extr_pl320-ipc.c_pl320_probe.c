
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amba_id {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct amba_device {int dev; int * irq; TYPE_1__ res; } ;


 int A9_SOURCE ;
 int CHAN_MASK (int ) ;
 int ENOMEM ;
 int IPCMxDSET (int ) ;
 int IPCMxMSET (int ) ;
 int IPCMxSEND (int ) ;
 int IPCMxSOURCE (int ) ;
 int IPC_RX_MBOX ;
 int IPC_TX_MBOX ;
 int M3_SOURCE ;
 int dev_name (int *) ;
 int * ioremap (int ,int ) ;
 int iounmap (int *) ;
 int * ipc_base ;
 int ipc_handler ;
 int ipc_irq ;
 int request_irq (int ,int ,int ,int ,int *) ;
 int resource_size (TYPE_1__*) ;
 int writel_relaxed (int,int *) ;

__attribute__((used)) static int pl320_probe(struct amba_device *adev, const struct amba_id *id)
{
 int ret;

 ipc_base = ioremap(adev->res.start, resource_size(&adev->res));
 if (ipc_base == ((void*)0))
  return -ENOMEM;

 writel_relaxed(0, ipc_base + IPCMxSEND(IPC_TX_MBOX));

 ipc_irq = adev->irq[0];
 ret = request_irq(ipc_irq, ipc_handler, 0, dev_name(&adev->dev), ((void*)0));
 if (ret < 0)
  goto err;


 writel_relaxed(CHAN_MASK(A9_SOURCE),
         ipc_base + IPCMxSOURCE(IPC_TX_MBOX));
 writel_relaxed(CHAN_MASK(M3_SOURCE),
         ipc_base + IPCMxDSET(IPC_TX_MBOX));
 writel_relaxed(CHAN_MASK(M3_SOURCE) | CHAN_MASK(A9_SOURCE),
         ipc_base + IPCMxMSET(IPC_TX_MBOX));


 writel_relaxed(CHAN_MASK(M3_SOURCE),
         ipc_base + IPCMxSOURCE(IPC_RX_MBOX));
 writel_relaxed(CHAN_MASK(A9_SOURCE),
         ipc_base + IPCMxDSET(IPC_RX_MBOX));
 writel_relaxed(CHAN_MASK(M3_SOURCE) | CHAN_MASK(A9_SOURCE),
         ipc_base + IPCMxMSET(IPC_RX_MBOX));

 return 0;
err:
 iounmap(ipc_base);
 return ret;
}
