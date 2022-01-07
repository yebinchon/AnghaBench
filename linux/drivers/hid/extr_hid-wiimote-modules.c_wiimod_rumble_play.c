
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cache_rumble; } ;
struct wiimote_data {int rumble_worker; TYPE_3__ state; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ weak_magnitude; scalar_t__ strong_magnitude; } ;
struct TYPE_5__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;
typedef int __u8 ;


 struct wiimote_data* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int wiimod_rumble_play(struct input_dev *dev, void *data,
         struct ff_effect *eff)
{
 struct wiimote_data *wdata = input_get_drvdata(dev);
 __u8 value;







 if (eff->u.rumble.strong_magnitude || eff->u.rumble.weak_magnitude)
  value = 1;
 else
  value = 0;



 wdata->state.cache_rumble = value;
 schedule_work(&wdata->rumble_worker);

 return 0;
}
