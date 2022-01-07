
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiimote_data {TYPE_1__* input; } ;
struct wiimod_ops {int dummy; } ;
struct TYPE_2__ {int keybit; int evbit; } ;


 int EV_KEY ;
 unsigned int WIIPROTO_KEY_COUNT ;
 int set_bit (int ,int ) ;
 int * wiimod_keys_map ;

__attribute__((used)) static int wiimod_keys_probe(const struct wiimod_ops *ops,
        struct wiimote_data *wdata)
{
 unsigned int i;

 set_bit(EV_KEY, wdata->input->evbit);
 for (i = 0; i < WIIPROTO_KEY_COUNT; ++i)
  set_bit(wiimod_keys_map[i], wdata->input->keybit);

 return 0;
}
