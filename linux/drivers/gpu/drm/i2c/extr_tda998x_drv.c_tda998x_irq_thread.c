
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda998x_priv {int wq_edid; scalar_t__ wq_edid_wait; int cec_notify; int detect_work; } ;
typedef int irqreturn_t ;


 int CEC_INTSTATUS_HDMI ;
 int CEC_PHYS_ADDR_INVALID ;
 int CEC_RXSHPDINT_HPD ;
 int CEC_RXSHPDLEV_HPD ;
 int DRM_DEBUG_DRIVER (char*,int,int,int,int,int,int) ;
 int INT_FLAGS_2_EDID_BLK_RD ;
 int IRQ_RETVAL (int) ;
 int REG_CEC_INTSTATUS ;
 int REG_CEC_RXSHPDINT ;
 int REG_CEC_RXSHPDLEV ;
 int REG_INT_FLAGS_0 ;
 int REG_INT_FLAGS_1 ;
 int REG_INT_FLAGS_2 ;
 int cec_notifier_set_phys_addr (int ,int ) ;
 int cec_read (struct tda998x_priv*,int ) ;
 int reg_read (struct tda998x_priv*,int ) ;
 int schedule_work (int *) ;
 int tda998x_edid_delay_start (struct tda998x_priv*) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t tda998x_irq_thread(int irq, void *data)
{
 struct tda998x_priv *priv = data;
 u8 sta, cec, lvl, flag0, flag1, flag2;
 bool handled = 0;

 sta = cec_read(priv, REG_CEC_INTSTATUS);
 if (sta & CEC_INTSTATUS_HDMI) {
  cec = cec_read(priv, REG_CEC_RXSHPDINT);
  lvl = cec_read(priv, REG_CEC_RXSHPDLEV);
  flag0 = reg_read(priv, REG_INT_FLAGS_0);
  flag1 = reg_read(priv, REG_INT_FLAGS_1);
  flag2 = reg_read(priv, REG_INT_FLAGS_2);
  DRM_DEBUG_DRIVER(
   "tda irq sta %02x cec %02x lvl %02x f0 %02x f1 %02x f2 %02x\n",
   sta, cec, lvl, flag0, flag1, flag2);

  if (cec & CEC_RXSHPDINT_HPD) {
   if (lvl & CEC_RXSHPDLEV_HPD) {
    tda998x_edid_delay_start(priv);
   } else {
    schedule_work(&priv->detect_work);
    cec_notifier_set_phys_addr(priv->cec_notify,
         CEC_PHYS_ADDR_INVALID);
   }

   handled = 1;
  }

  if ((flag2 & INT_FLAGS_2_EDID_BLK_RD) && priv->wq_edid_wait) {
   priv->wq_edid_wait = 0;
   wake_up(&priv->wq_edid);
   handled = 1;
  }
 }

 return IRQ_RETVAL(handled);
}
