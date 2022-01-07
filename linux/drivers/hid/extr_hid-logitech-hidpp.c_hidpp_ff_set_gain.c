
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct input_dev {TYPE_1__* ff; } ;
struct hidpp_ff_private_data {int dummy; } ;
struct TYPE_2__ {struct hidpp_ff_private_data* private; } ;


 int ARRAY_SIZE (int*) ;
 int HIDPP_FF_EFFECTID_NONE ;
 int HIDPP_FF_SET_GLOBAL_GAINS ;
 int dbg_hid (char*,int) ;
 int hidpp_ff_queue_work (struct hidpp_ff_private_data*,int ,int ,int*,int ) ;

__attribute__((used)) static void hidpp_ff_set_gain(struct input_dev *dev, u16 gain)
{
 struct hidpp_ff_private_data *data = dev->ff->private;
 u8 params[4];

 dbg_hid("Setting gain to %d.\n", gain);

 params[0] = gain >> 8;
 params[1] = gain & 255;
 params[2] = 0;
 params[3] = 0;

 hidpp_ff_queue_work(data, HIDPP_FF_EFFECTID_NONE, HIDPP_FF_SET_GLOBAL_GAINS, params, ARRAY_SIZE(params));
}
