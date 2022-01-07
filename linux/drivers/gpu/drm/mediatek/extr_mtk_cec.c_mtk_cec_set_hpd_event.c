
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cec {void (* hpd_event ) (int,struct device*) ;int lock; struct device* hdmi_dev; } ;
struct device {int dummy; } ;


 struct mtk_cec* dev_get_drvdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mtk_cec_set_hpd_event(struct device *dev,
      void (*hpd_event)(bool hpd, struct device *dev),
      struct device *hdmi_dev)
{
 struct mtk_cec *cec = dev_get_drvdata(dev);
 unsigned long flags;

 spin_lock_irqsave(&cec->lock, flags);
 cec->hdmi_dev = hdmi_dev;
 cec->hpd_event = hpd_event;
 spin_unlock_irqrestore(&cec->lock, flags);
}
