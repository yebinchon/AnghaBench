
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {int dummy; } ;


 int SHA_REG_IRQSTATUS ;
 int SHA_REG_IRQSTATUS_INPUT_RDY ;
 int omap_sham_wait (struct omap_sham_dev*,int ,int ) ;

__attribute__((used)) static int omap_sham_poll_irq_omap4(struct omap_sham_dev *dd)
{
 return omap_sham_wait(dd, SHA_REG_IRQSTATUS,
         SHA_REG_IRQSTATUS_INPUT_RDY);
}
