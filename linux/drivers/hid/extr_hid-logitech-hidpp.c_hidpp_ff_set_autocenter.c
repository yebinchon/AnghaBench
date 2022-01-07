
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
 int HIDPP_AUTOCENTER_PARAMS_LENGTH ;
 int HIDPP_FF_DOWNLOAD_EFFECT ;
 int HIDPP_FF_EFFECTID_AUTOCENTER ;
 int HIDPP_FF_EFFECT_AUTOSTART ;
 int HIDPP_FF_EFFECT_SPRING ;
 int dbg_hid (char*,int) ;
 int hidpp_ff_queue_work (struct hidpp_ff_private_data*,int ,int ,int*,int ) ;

__attribute__((used)) static void hidpp_ff_set_autocenter(struct input_dev *dev, u16 magnitude)
{
 struct hidpp_ff_private_data *data = dev->ff->private;
 u8 params[HIDPP_AUTOCENTER_PARAMS_LENGTH];

 dbg_hid("Setting autocenter to %d.\n", magnitude);


 params[1] = HIDPP_FF_EFFECT_SPRING | HIDPP_FF_EFFECT_AUTOSTART;

 params[2] = params[3] = params[4] = params[5] = 0;

 params[8] = params[14] = magnitude >> 11;
 params[9] = params[15] = (magnitude >> 3) & 255;
 params[6] = params[16] = magnitude >> 9;
 params[7] = params[17] = (magnitude >> 1) & 255;

 params[10] = params[11] = params[12] = params[13] = 0;

 hidpp_ff_queue_work(data, HIDPP_FF_EFFECTID_AUTOCENTER, HIDPP_FF_DOWNLOAD_EFFECT, params, ARRAY_SIZE(params));
}
