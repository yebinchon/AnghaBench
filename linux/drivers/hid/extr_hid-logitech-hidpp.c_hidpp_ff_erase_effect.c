
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct input_dev {TYPE_1__* ff; } ;
struct hidpp_ff_private_data {int dummy; } ;
struct TYPE_2__ {struct hidpp_ff_private_data* private; } ;


 int HIDPP_FF_DESTROY_EFFECT ;
 int dbg_hid (char*,int) ;
 int hidpp_ff_queue_work (struct hidpp_ff_private_data*,int,int ,int *,int) ;

__attribute__((used)) static int hidpp_ff_erase_effect(struct input_dev *dev, int effect_id)
{
 struct hidpp_ff_private_data *data = dev->ff->private;
 u8 slot = 0;

 dbg_hid("Erasing effect %d.\n", effect_id);

 return hidpp_ff_queue_work(data, effect_id, HIDPP_FF_DESTROY_EFFECT, &slot, 1);
}
