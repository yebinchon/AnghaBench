
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ml_device {int (* play_effect ) (struct input_dev*,void*,struct ff_effect*) ;int gain; TYPE_1__* states; int timer; void* private; struct input_dev* dev; } ;
struct input_dev {int ffbit; struct ff_device* ff; } ;
struct ff_device {int * effects; int ffbit; int destroy; int set_gain; int playback; int upload; struct ml_device* private; } ;
struct TYPE_2__ {int * effect; } ;


 int ENOMEM ;
 int FF_GAIN ;
 int FF_MEMLESS_EFFECTS ;
 int FF_PERIODIC ;
 int FF_RUMBLE ;
 int FF_SINE ;
 int FF_SQUARE ;
 int FF_TRIANGLE ;
 int GFP_KERNEL ;
 int input_ff_create (struct input_dev*,int) ;
 int kfree (struct ml_device*) ;
 struct ml_device* kzalloc (int,int ) ;
 int ml_effect_timer ;
 int ml_ff_destroy ;
 int ml_ff_playback ;
 int ml_ff_set_gain ;
 int ml_ff_upload ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;
 int timer_setup (int *,int ,int ) ;

int input_ff_create_memless(struct input_dev *dev, void *data,
  int (*play_effect)(struct input_dev *, void *, struct ff_effect *))
{
 struct ml_device *ml;
 struct ff_device *ff;
 int error;
 int i;

 ml = kzalloc(sizeof(struct ml_device), GFP_KERNEL);
 if (!ml)
  return -ENOMEM;

 ml->dev = dev;
 ml->private = data;
 ml->play_effect = play_effect;
 ml->gain = 0xffff;
 timer_setup(&ml->timer, ml_effect_timer, 0);

 set_bit(FF_GAIN, dev->ffbit);

 error = input_ff_create(dev, FF_MEMLESS_EFFECTS);
 if (error) {
  kfree(ml);
  return error;
 }

 ff = dev->ff;
 ff->private = ml;
 ff->upload = ml_ff_upload;
 ff->playback = ml_ff_playback;
 ff->set_gain = ml_ff_set_gain;
 ff->destroy = ml_ff_destroy;


 if (test_bit(FF_RUMBLE, ff->ffbit)) {
  set_bit(FF_PERIODIC, dev->ffbit);
  set_bit(FF_SINE, dev->ffbit);
  set_bit(FF_TRIANGLE, dev->ffbit);
  set_bit(FF_SQUARE, dev->ffbit);
 }

 for (i = 0; i < FF_MEMLESS_EFFECTS; i++)
  ml->states[i].effect = &ff->effects[i];

 return 0;
}
