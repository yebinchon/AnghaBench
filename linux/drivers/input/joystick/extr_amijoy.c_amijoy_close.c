
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int IRQ_AMIGA_VERTB ;
 int amijoy_interrupt ;
 int amijoy_mutex ;
 int amijoy_used ;
 int free_irq (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void amijoy_close(struct input_dev *dev)
{
 mutex_lock(&amijoy_mutex);
 if (!--amijoy_used)
  free_irq(IRQ_AMIGA_VERTB, amijoy_interrupt);
 mutex_unlock(&amijoy_mutex);
}
