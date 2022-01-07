
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct input_dev {TYPE_1__* ff; } ;
struct hidpp_ff_private_data {int dummy; } ;
struct TYPE_2__ {struct hidpp_ff_private_data* private; } ;


 int ARRAY_SIZE (int *) ;
 int HIDPP_FF_EFFECT_STATE_PLAY ;
 int HIDPP_FF_EFFECT_STATE_STOP ;
 int HIDPP_FF_SET_EFFECT_STATE ;
 int dbg_hid (char*,char*,int) ;
 int hidpp_ff_queue_work (struct hidpp_ff_private_data*,int,int ,int *,int ) ;

__attribute__((used)) static int hidpp_ff_playback(struct input_dev *dev, int effect_id, int value)
{
 struct hidpp_ff_private_data *data = dev->ff->private;
 u8 params[2];

 params[1] = value ? HIDPP_FF_EFFECT_STATE_PLAY : HIDPP_FF_EFFECT_STATE_STOP;

 dbg_hid("St%sing playback of effect %d.\n", value?"art":"opp", effect_id);

 return hidpp_ff_queue_work(data, effect_id, HIDPP_FF_SET_EFFECT_STATE, params, ARRAY_SIZE(params));
}
