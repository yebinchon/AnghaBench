
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i801_priv {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int MAX_RETRIES ;
 int SMBHSTSTS (struct i801_priv*) ;
 int SMBHSTSTS_BYTE_DONE ;
 int STATUS_ERROR_FLAGS ;
 int dev_dbg (int *,char*) ;
 int inb_p (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int i801_wait_byte_done(struct i801_priv *priv)
{
 int timeout = 0;
 int status;


 do {
  usleep_range(250, 500);
  status = inb_p(SMBHSTSTS(priv));
 } while (!(status & (STATUS_ERROR_FLAGS | SMBHSTSTS_BYTE_DONE)) &&
   (timeout++ < MAX_RETRIES));

 if (timeout > MAX_RETRIES) {
  dev_dbg(&priv->pci_dev->dev, "BYTE_DONE Timeout!\n");
  return -ETIMEDOUT;
 }
 return status & STATUS_ERROR_FLAGS;
}
