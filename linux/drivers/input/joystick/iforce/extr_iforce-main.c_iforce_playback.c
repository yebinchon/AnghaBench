
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct iforce_core_effect {int flags; } ;
struct iforce {struct iforce_core_effect* core_effects; } ;


 int FF_CORE_SHOULD_PLAY ;
 int clear_bit (int ,int ) ;
 int iforce_control_playback (struct iforce*,int,int) ;
 struct iforce* input_get_drvdata (struct input_dev*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int iforce_playback(struct input_dev *dev, int effect_id, int value)
{
 struct iforce *iforce = input_get_drvdata(dev);
 struct iforce_core_effect *core_effect = &iforce->core_effects[effect_id];

 if (value > 0)
  set_bit(FF_CORE_SHOULD_PLAY, core_effect->flags);
 else
  clear_bit(FF_CORE_SHOULD_PLAY, core_effect->flags);

 iforce_control_playback(iforce, effect_id, value);
 return 0;
}
