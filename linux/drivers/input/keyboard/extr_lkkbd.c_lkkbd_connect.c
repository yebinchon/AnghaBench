
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct serio_driver {int dummy; } ;
struct serio {char* phys; int dev; } ;
struct lkkbd {struct serio* serio; struct input_dev* dev; int * keycode; int phys; int name; int ctrlclick_volume; int keyclick_volume; int bell_volume; int tq; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int version; scalar_t__ product; int vendor; int bustype; } ;
struct input_dev {int keycodesize; int keybit; int keycodemax; int * keycode; int sndbit; int ledbit; int evbit; int event; TYPE_2__ dev; TYPE_1__ id; int phys; int name; } ;


 int ARRAY_SIZE (int *) ;
 int BUS_RS232 ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_LED ;
 int EV_REP ;
 int EV_SND ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int KEY_RESERVED ;
 int LED_CAPSL ;
 int LED_COMPOSE ;
 int LED_SCROLLL ;
 int LED_SLEEP ;
 int LK_CMD_POWERCYCLE_RESET ;
 int LK_NUM_KEYCODES ;
 int SERIO_LKKBD ;
 int SND_BELL ;
 int SND_CLICK ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int bell_volume ;
 int ctrlclick_volume ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_drvdata (struct input_dev*,struct lkkbd*) ;
 int keyclick_volume ;
 int kfree (struct lkkbd*) ;
 struct lkkbd* kzalloc (int,int ) ;
 int lkkbd_event ;
 int lkkbd_keycode ;
 int lkkbd_reinit ;
 int memcpy (int *,int ,int) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct lkkbd*) ;
 int serio_write (struct serio*,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int lkkbd_connect(struct serio *serio, struct serio_driver *drv)
{
 struct lkkbd *lk;
 struct input_dev *input_dev;
 int i;
 int err;

 lk = kzalloc(sizeof(struct lkkbd), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!lk || !input_dev) {
  err = -ENOMEM;
  goto fail1;
 }

 lk->serio = serio;
 lk->dev = input_dev;
 INIT_WORK(&lk->tq, lkkbd_reinit);
 lk->bell_volume = bell_volume;
 lk->keyclick_volume = keyclick_volume;
 lk->ctrlclick_volume = ctrlclick_volume;
 memcpy(lk->keycode, lkkbd_keycode, sizeof(lk->keycode));

 strlcpy(lk->name, "DEC LK keyboard", sizeof(lk->name));
 snprintf(lk->phys, sizeof(lk->phys), "%s/input0", serio->phys);

 input_dev->name = lk->name;
 input_dev->phys = lk->phys;
 input_dev->id.bustype = BUS_RS232;
 input_dev->id.vendor = SERIO_LKKBD;
 input_dev->id.product = 0;
 input_dev->id.version = 0x0100;
 input_dev->dev.parent = &serio->dev;
 input_dev->event = lkkbd_event;

 input_set_drvdata(input_dev, lk);

 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(EV_LED, input_dev->evbit);
 __set_bit(EV_SND, input_dev->evbit);
 __set_bit(EV_REP, input_dev->evbit);
 __set_bit(LED_CAPSL, input_dev->ledbit);
 __set_bit(LED_SLEEP, input_dev->ledbit);
 __set_bit(LED_COMPOSE, input_dev->ledbit);
 __set_bit(LED_SCROLLL, input_dev->ledbit);
 __set_bit(SND_BELL, input_dev->sndbit);
 __set_bit(SND_CLICK, input_dev->sndbit);

 input_dev->keycode = lk->keycode;
 input_dev->keycodesize = sizeof(lk->keycode[0]);
 input_dev->keycodemax = ARRAY_SIZE(lk->keycode);

 for (i = 0; i < LK_NUM_KEYCODES; i++)
  __set_bit(lk->keycode[i], input_dev->keybit);
 __clear_bit(KEY_RESERVED, input_dev->keybit);

 serio_set_drvdata(serio, lk);

 err = serio_open(serio, drv);
 if (err)
  goto fail2;

 err = input_register_device(lk->dev);
 if (err)
  goto fail3;

 serio_write(lk->serio, LK_CMD_POWERCYCLE_RESET);

 return 0;

 fail3: serio_close(serio);
 fail2: serio_set_drvdata(serio, ((void*)0));
 fail1: input_free_device(input_dev);
 kfree(lk);
 return err;
}
