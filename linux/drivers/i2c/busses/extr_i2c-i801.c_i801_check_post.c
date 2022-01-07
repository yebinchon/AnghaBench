
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i801_priv {int features; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int EBADMSG ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int FEATURE_SMBUS_PEC ;
 int SMBAUXSTS (struct i801_priv*) ;
 int SMBAUXSTS_CRCE ;
 int SMBHSTCNT (struct i801_priv*) ;
 int SMBHSTCNT_KILL ;
 int SMBHSTSTS (struct i801_priv*) ;
 int SMBHSTSTS_BUS_ERR ;
 int SMBHSTSTS_DEV_ERR ;
 int SMBHSTSTS_FAILED ;
 int SMBHSTSTS_HOST_BUSY ;
 int STATUS_FLAGS ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 scalar_t__ unlikely (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int i801_check_post(struct i801_priv *priv, int status)
{
 int result = 0;







 if (unlikely(status < 0)) {
  dev_err(&priv->pci_dev->dev, "Transaction timeout\n");

  dev_dbg(&priv->pci_dev->dev, "Terminating the current operation\n");
  outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL,
         SMBHSTCNT(priv));
  usleep_range(1000, 2000);
  outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL),
         SMBHSTCNT(priv));


  status = inb_p(SMBHSTSTS(priv));
  if ((status & SMBHSTSTS_HOST_BUSY) ||
      !(status & SMBHSTSTS_FAILED))
   dev_err(&priv->pci_dev->dev,
    "Failed terminating the transaction\n");
  outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
  return -ETIMEDOUT;
 }

 if (status & SMBHSTSTS_FAILED) {
  result = -EIO;
  dev_err(&priv->pci_dev->dev, "Transaction failed\n");
 }
 if (status & SMBHSTSTS_DEV_ERR) {
  if ((priv->features & FEATURE_SMBUS_PEC) &&
      (inb_p(SMBAUXSTS(priv)) & SMBAUXSTS_CRCE)) {
   outb_p(SMBAUXSTS_CRCE, SMBAUXSTS(priv));
   result = -EBADMSG;
   dev_dbg(&priv->pci_dev->dev, "PEC error\n");
  } else {
   result = -ENXIO;
   dev_dbg(&priv->pci_dev->dev, "No response\n");
  }
 }
 if (status & SMBHSTSTS_BUS_ERR) {
  result = -EAGAIN;
  dev_dbg(&priv->pci_dev->dev, "Lost arbitration\n");
 }


 outb_p(status, SMBHSTSTS(priv));

 return result;
}
