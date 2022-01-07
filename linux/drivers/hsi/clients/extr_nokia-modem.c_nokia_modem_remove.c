
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nokia_modem_device {int nokia_modem_rst_ind_tasklet; int nokia_modem_rst_ind_irq; TYPE_1__* ssi_protocol; TYPE_2__* cmt_speech; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {int device; } ;


 struct nokia_modem_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int disable_irq_wake (int ) ;
 int hsi_remove_client (int *,int *) ;
 int nokia_modem_gpio_unexport (struct device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int nokia_modem_remove(struct device *dev)
{
 struct nokia_modem_device *modem = dev_get_drvdata(dev);

 if (!modem)
  return 0;

 if (modem->cmt_speech) {
  hsi_remove_client(&modem->cmt_speech->device, ((void*)0));
  modem->cmt_speech = ((void*)0);
 }

 if (modem->ssi_protocol) {
  hsi_remove_client(&modem->ssi_protocol->device, ((void*)0));
  modem->ssi_protocol = ((void*)0);
 }

 nokia_modem_gpio_unexport(dev);
 dev_set_drvdata(dev, ((void*)0));
 disable_irq_wake(modem->nokia_modem_rst_ind_irq);
 tasklet_kill(&modem->nokia_modem_rst_ind_tasklet);

 return 0;
}
