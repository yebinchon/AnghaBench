
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int timeout; } ;
struct i801_priv {int features; int status; TYPE_1__* pci_dev; int waitq; struct i2c_adapter adapter; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int FEATURE_IRQ ;
 int SMBHSTCNT (struct i801_priv*) ;
 int SMBHSTCNT_INTREN ;
 int SMBHSTCNT_START ;
 int dev_warn (int *,char*) ;
 int i801_check_post (struct i801_priv*,int) ;
 int i801_check_pre (struct i801_priv*) ;
 int i801_wait_intr (struct i801_priv*) ;
 int outb_p (int,int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int i801_transaction(struct i801_priv *priv, int xact)
{
 int status;
 int result;
 const struct i2c_adapter *adap = &priv->adapter;

 result = i801_check_pre(priv);
 if (result < 0)
  return result;

 if (priv->features & FEATURE_IRQ) {
  outb_p(xact | SMBHSTCNT_INTREN | SMBHSTCNT_START,
         SMBHSTCNT(priv));
  result = wait_event_timeout(priv->waitq,
         (status = priv->status),
         adap->timeout);
  if (!result) {
   status = -ETIMEDOUT;
   dev_warn(&priv->pci_dev->dev,
     "Timeout waiting for interrupt!\n");
  }
  priv->status = 0;
  return i801_check_post(priv, status);
 }



 outb_p(xact | SMBHSTCNT_START, SMBHSTCNT(priv));

 status = i801_wait_intr(priv);
 return i801_check_post(priv, status);
}
