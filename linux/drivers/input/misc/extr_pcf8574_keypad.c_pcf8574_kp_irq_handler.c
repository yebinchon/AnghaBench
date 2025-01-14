
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kp_data {unsigned char laststate; unsigned short* btncode; int idev; } ;
typedef int irqreturn_t ;


 unsigned char ARRAY_SIZE (unsigned short*) ;
 int IRQ_HANDLED ;
 int input_report_key (int ,unsigned short,int) ;
 int input_sync (int ) ;
 unsigned char read_state (struct kp_data*) ;

__attribute__((used)) static irqreturn_t pcf8574_kp_irq_handler(int irq, void *dev_id)
{
 struct kp_data *lp = dev_id;
 unsigned char nextstate = read_state(lp);

 if (lp->laststate != nextstate) {
  int key_down = nextstate < ARRAY_SIZE(lp->btncode);
  unsigned short keycode = key_down ?
   lp->btncode[nextstate] : lp->btncode[lp->laststate];

  input_report_key(lp->idev, keycode, key_down);
  input_sync(lp->idev);

  lp->laststate = nextstate;
 }

 return IRQ_HANDLED;
}
