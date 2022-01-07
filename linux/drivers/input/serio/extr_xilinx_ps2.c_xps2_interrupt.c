
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xps2data {int flags; int serio; int dev; scalar_t__ base_address; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SERIO_PARITY ;
 int SERIO_TIMEOUT ;
 scalar_t__ XPS2_IPISR_OFFSET ;
 int XPS2_IPIXR_RX_ERR ;
 int XPS2_IPIXR_RX_FULL ;
 int XPS2_IPIXR_RX_OVF ;
 int XPS2_IPIXR_TX_NOACK ;
 int XPS2_IPIXR_WDT_TOUT ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,int) ;
 int serio_interrupt (int ,int ,int ) ;
 int xps2_recv (struct xps2data*,int *) ;

__attribute__((used)) static irqreturn_t xps2_interrupt(int irq, void *dev_id)
{
 struct xps2data *drvdata = dev_id;
 u32 intr_sr;
 u8 c;
 int status;


 intr_sr = in_be32(drvdata->base_address + XPS2_IPISR_OFFSET);
 out_be32(drvdata->base_address + XPS2_IPISR_OFFSET, intr_sr);


 if (intr_sr & XPS2_IPIXR_RX_OVF)
  dev_warn(drvdata->dev, "receive overrun error\n");

 if (intr_sr & XPS2_IPIXR_RX_ERR)
  drvdata->flags |= SERIO_PARITY;

 if (intr_sr & (XPS2_IPIXR_TX_NOACK | XPS2_IPIXR_WDT_TOUT))
  drvdata->flags |= SERIO_TIMEOUT;

 if (intr_sr & XPS2_IPIXR_RX_FULL) {
  status = xps2_recv(drvdata, &c);


  if (status) {
   dev_err(drvdata->dev,
    "wrong rcvd byte count (%d)\n", status);
  } else {
   serio_interrupt(drvdata->serio, c, drvdata->flags);
   drvdata->flags = 0;
  }
 }

 return IRQ_HANDLED;
}
