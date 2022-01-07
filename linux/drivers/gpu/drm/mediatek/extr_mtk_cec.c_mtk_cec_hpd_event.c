
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cec {void (* hpd_event ) (int,struct device*) ;struct device* hdmi_dev; int lock; } ;
typedef struct device device ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mtk_cec_hpd_event(struct mtk_cec *cec, bool hpd)
{
 void (*hpd_event)(bool hpd, struct device *dev);
 struct device *hdmi_dev;
 unsigned long flags;

 spin_lock_irqsave(&cec->lock, flags);
 hpd_event = cec->hpd_event;
 hdmi_dev = cec->hdmi_dev;
 spin_unlock_irqrestore(&cec->lock, flags);

 if (hpd_event)
  hpd_event(hpd, hdmi_dev);
}
