
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xps2data {int lock; scalar_t__ base_address; } ;
struct serio {struct xps2data* port_data; } ;


 scalar_t__ XPS2_STATUS_OFFSET ;
 int XPS2_STATUS_TX_FULL ;
 scalar_t__ XPS2_TX_DATA_OFFSET ;
 int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sxps2_write(struct serio *pserio, unsigned char c)
{
 struct xps2data *drvdata = pserio->port_data;
 unsigned long flags;
 u32 sr;
 int status = -1;

 spin_lock_irqsave(&drvdata->lock, flags);


 sr = in_be32(drvdata->base_address + XPS2_STATUS_OFFSET);
 if (!(sr & XPS2_STATUS_TX_FULL)) {
  out_be32(drvdata->base_address + XPS2_TX_DATA_OFFSET, c);
  status = 0;
 }

 spin_unlock_irqrestore(&drvdata->lock, flags);

 return status;
}
