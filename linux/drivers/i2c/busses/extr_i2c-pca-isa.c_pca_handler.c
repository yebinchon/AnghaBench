
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int pca_wait ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t pca_handler(int this_irq, void *dev_id) {
 wake_up(&pca_wait);
 return IRQ_HANDLED;
}
