
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i801_priv {int adapter; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SMBNTFDADD (struct i801_priv*) ;
 int SMBSLVSTS (struct i801_priv*) ;
 int SMBSLVSTS_HST_NTFY_STS ;
 int i2c_handle_smbus_host_notify (int *,unsigned short) ;
 int inb_p (int ) ;
 int outb_p (int ,int ) ;

__attribute__((used)) static irqreturn_t i801_host_notify_isr(struct i801_priv *priv)
{
 unsigned short addr;

 addr = inb_p(SMBNTFDADD(priv)) >> 1;






 i2c_handle_smbus_host_notify(&priv->adapter, addr);


 outb_p(SMBSLVSTS_HST_NTFY_STS, SMBSLVSTS(priv));
 return IRQ_HANDLED;
}
