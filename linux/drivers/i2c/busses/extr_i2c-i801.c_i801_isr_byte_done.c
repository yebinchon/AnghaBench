
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i801_priv {int cmd; int count; int len; int* data; TYPE_1__* pci_dev; scalar_t__ is_read; } ;
struct TYPE_2__ {int dev; } ;


 int I2C_SMBUS_BLOCK_MAX ;
 int I801_BLOCK_DATA ;
 int SMBBLKDAT (struct i801_priv*) ;
 int SMBHSTCNT (struct i801_priv*) ;
 int SMBHSTCNT_LAST_BYTE ;
 int SMBHSTDAT0 (struct i801_priv*) ;
 int SMBHSTSTS (struct i801_priv*) ;
 int SMBHSTSTS_BYTE_DONE ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 int inb (int ) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static void i801_isr_byte_done(struct i801_priv *priv)
{
 if (priv->is_read) {

  if (((priv->cmd & 0x1c) == I801_BLOCK_DATA) &&
      (priv->count == 0)) {
   priv->len = inb_p(SMBHSTDAT0(priv));
   if (priv->len < 1 || priv->len > I2C_SMBUS_BLOCK_MAX) {
    dev_err(&priv->pci_dev->dev,
     "Illegal SMBus block read size %d\n",
     priv->len);

    priv->len = I2C_SMBUS_BLOCK_MAX;
   } else {
    dev_dbg(&priv->pci_dev->dev,
     "SMBus block read size is %d\n",
     priv->len);
   }
   priv->data[-1] = priv->len;
  }


  if (priv->count < priv->len)
   priv->data[priv->count++] = inb(SMBBLKDAT(priv));
  else
   dev_dbg(&priv->pci_dev->dev,
    "Discarding extra byte on block read\n");


  if (priv->count == priv->len - 1)
   outb_p(priv->cmd | SMBHSTCNT_LAST_BYTE,
          SMBHSTCNT(priv));
 } else if (priv->count < priv->len - 1) {

  outb_p(priv->data[++priv->count], SMBBLKDAT(priv));
 }


 outb_p(SMBHSTSTS_BYTE_DONE, SMBHSTSTS(priv));
}
