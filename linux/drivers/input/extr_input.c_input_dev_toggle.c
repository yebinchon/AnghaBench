
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int * rep; int (* event ) (struct input_dev*,int ,size_t,int ) ;int evbit; } ;


 int EV_REP ;
 int INPUT_DO_TOGGLE (struct input_dev*,int ,int ,int) ;
 int LED ;
 size_t REP_DELAY ;
 size_t REP_PERIOD ;
 int SND ;
 int led ;
 int snd ;
 int stub1 (struct input_dev*,int ,size_t,int ) ;
 int stub2 (struct input_dev*,int ,size_t,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void input_dev_toggle(struct input_dev *dev, bool activate)
{
 if (!dev->event)
  return;

 INPUT_DO_TOGGLE(dev, LED, led, activate);
 INPUT_DO_TOGGLE(dev, SND, snd, activate);

 if (activate && test_bit(EV_REP, dev->evbit)) {
  dev->event(dev, EV_REP, REP_PERIOD, dev->rep[REP_PERIOD]);
  dev->event(dev, EV_REP, REP_DELAY, dev->rep[REP_DELAY]);
 }
}
