
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int LOGIBM_CONTROL_PORT ;
 int LOGIBM_DISABLE_IRQ ;
 int free_irq (int ,int *) ;
 int logibm_irq ;
 int outb (int ,int ) ;

__attribute__((used)) static void logibm_close(struct input_dev *dev)
{
 outb(LOGIBM_DISABLE_IRQ, LOGIBM_CONTROL_PORT);
 free_irq(logibm_irq, ((void*)0));
}
