
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i801_priv {int features; int status; int waitq; int pci_dev; } ;
typedef int irqreturn_t ;


 int FEATURE_HOST_NOTIFY ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SMBHSTSTS (struct i801_priv*) ;
 int SMBHSTSTS_BYTE_DONE ;
 int SMBHSTSTS_INTR ;
 int SMBPCISTS ;
 int SMBPCISTS_INTS ;
 int SMBSLVSTS (struct i801_priv*) ;
 int SMBSLVSTS_HST_NTFY_STS ;
 int STATUS_ERROR_FLAGS ;
 int i801_host_notify_isr (struct i801_priv*) ;
 int i801_isr_byte_done (struct i801_priv*) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 int pci_read_config_word (int ,int ,int*) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t i801_isr(int irq, void *dev_id)
{
 struct i801_priv *priv = dev_id;
 u16 pcists;
 u8 status;


 pci_read_config_word(priv->pci_dev, SMBPCISTS, &pcists);
 if (!(pcists & SMBPCISTS_INTS))
  return IRQ_NONE;

 if (priv->features & FEATURE_HOST_NOTIFY) {
  status = inb_p(SMBSLVSTS(priv));
  if (status & SMBSLVSTS_HST_NTFY_STS)
   return i801_host_notify_isr(priv);
 }

 status = inb_p(SMBHSTSTS(priv));
 if (status & SMBHSTSTS_BYTE_DONE)
  i801_isr_byte_done(priv);





 status &= SMBHSTSTS_INTR | STATUS_ERROR_FLAGS;
 if (status) {
  outb_p(status, SMBHSTSTS(priv));
  priv->status = status;
  wake_up(&priv->waitq);
 }

 return IRQ_HANDLED;
}
