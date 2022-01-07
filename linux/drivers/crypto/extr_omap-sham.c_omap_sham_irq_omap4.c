
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {int dummy; } ;
typedef int irqreturn_t ;


 int SHA_REG_MASK (struct omap_sham_dev*) ;
 int SHA_REG_MASK_IT_EN ;
 int omap_sham_irq_common (struct omap_sham_dev*) ;
 int omap_sham_write_mask (struct omap_sham_dev*,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t omap_sham_irq_omap4(int irq, void *dev_id)
{
 struct omap_sham_dev *dd = dev_id;

 omap_sham_write_mask(dd, SHA_REG_MASK(dd), 0, SHA_REG_MASK_IT_EN);

 return omap_sham_irq_common(dd);
}
