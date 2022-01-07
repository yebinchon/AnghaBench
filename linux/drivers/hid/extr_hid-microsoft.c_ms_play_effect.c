
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ms_data {int strong; int weak; int ff_worker; } ;
struct input_dev {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ weak_magnitude; scalar_t__ strong_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {scalar_t__ type; TYPE_2__ u; } ;


 scalar_t__ FF_RUMBLE ;
 int U16_MAX ;
 struct ms_data* hid_get_drvdata (struct hid_device*) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int ms_play_effect(struct input_dev *dev, void *data,
     struct ff_effect *effect)
{
 struct hid_device *hid = input_get_drvdata(dev);
 struct ms_data *ms = hid_get_drvdata(hid);

 if (effect->type != FF_RUMBLE)
  return 0;




 ms->strong = ((u32) effect->u.rumble.strong_magnitude * 100) / U16_MAX;
 ms->weak = ((u32) effect->u.rumble.weak_magnitude * 100) / U16_MAX;

 schedule_work(&ms->ff_worker);
 return 0;
}
