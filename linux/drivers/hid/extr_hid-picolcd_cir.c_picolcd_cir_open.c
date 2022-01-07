
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct picolcd_data* priv; } ;
struct picolcd_data {int lock; int status; } ;


 int PICOLCD_CIR_SHUN ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int picolcd_cir_open(struct rc_dev *dev)
{
 struct picolcd_data *data = dev->priv;
 unsigned long flags;

 spin_lock_irqsave(&data->lock, flags);
 data->status &= ~PICOLCD_CIR_SHUN;
 spin_unlock_irqrestore(&data->lock, flags);
 return 0;
}
