
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {int flags; } ;
typedef int irqreturn_t ;


 int FLAGS_FINAL ;
 int SHA_REG_CTRL ;
 int SHA_REG_CTRL_LENGTH ;
 int SHA_REG_CTRL_OUTPUT_READY ;
 int omap_sham_irq_common (struct omap_sham_dev*) ;
 int omap_sham_read (struct omap_sham_dev*,int ) ;
 int omap_sham_write_mask (struct omap_sham_dev*,int ,int ,int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static irqreturn_t omap_sham_irq_omap2(int irq, void *dev_id)
{
 struct omap_sham_dev *dd = dev_id;

 if (unlikely(test_bit(FLAGS_FINAL, &dd->flags)))

  omap_sham_write_mask(dd, SHA_REG_CTRL, 0, SHA_REG_CTRL_LENGTH);

 omap_sham_write_mask(dd, SHA_REG_CTRL, SHA_REG_CTRL_OUTPUT_READY,
     SHA_REG_CTRL_OUTPUT_READY);
 omap_sham_read(dd, SHA_REG_CTRL);

 return omap_sham_irq_common(dd);
}
